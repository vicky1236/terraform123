# Create a resource group for the azure resources
resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
} 
# Create Vnet and subnet for the AKS cluster
resource "azurerm_virtual_network" "vnet_cluster" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = var.cluster_vnet
}
resource "azurerm_subnet" "snet_cluster" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_cluster.name
  address_prefixes     = var.cluster_subnet
  # Enforce network policies to allow Private Endpoint to be added to the subnet
  enforce_private_link_endpoint_network_policies = true
}
# Create Vnet and subnet for the Bastion VM 
resource "azurerm_virtual_network" "vnet_bastion" {
  name                = var.bastin_subnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = var.bastin_vnet
}
resource "azurerm_subnet" "snet_bastion_vm" {
  name                 = var.bastin_subnet_name
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_bastion.name
  address_prefixes     = var.bastin_subnet
}
resource "azurerm_subnet" "snet_azure_bastion_service" {
  # The subnet name cannot be changed as the azure bastion host depends on the same
  name                 = var.bastinservice_subnet_name
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.vnet_bastion.name
  address_prefixes     = var.bastinservice_subnet
}
# Create Vnet peering for the bastion VM to be able to access the cluster Vnet and IPs
##
resource "azurerm_virtual_network_peering" "peering_bastion_cluster" {
  name                      = var.bastion_cluster_peering
  resource_group_name       = azurerm_resource_group.my_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_bastion.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_cluster.id
}
resource "azurerm_virtual_network_peering" "peering_cluster_bastion" {
  name                      = var.cluster_bastion_peering
  resource_group_name       = azurerm_resource_group.my_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet_cluster.name
  remote_virtual_network_id = azurerm_virtual_network.vnet_bastion.id
}
# Create a Bastion VM
## 
resource "azurerm_network_interface" "bastion_nic" {
  name                = var.bastin_nic_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  ip_configuration {
    name                          = var.ip_configname
    subnet_id                     = azurerm_subnet.snet_bastion_vm.id
    private_ip_address_allocation = var.ip_allocation
  }
}
resource "azurerm_linux_virtual_machine" "example" {
  name                            = "vm-bastion"
  location                        = var.location
  resource_group_name             = azurerm_resource_group.my_rg.name
  size                            = "Standard_D2_v2"
  admin_username                  = "bharath"
  admin_password                  = "bharath@1"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.bastion_nic.id,
  ]

  os_disk {
    caching              = var.cache
    storage_account_type = var.sc_type
  }

  source_image_reference {
    publisher = var.pub_type
    offer     = var.offer_type
    sku       = var.sku_type
    version   = var.vers_type
  }
}
# Create an Azure Bastion Service to access the Bastion VM
##
resource "azurerm_public_ip" "pip_azure_bastion" {
  name                = var.pub_ip_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name

  allocation_method = var.alloc_meth
  sku               = var.sku_type_bas
}

resource "azurerm_bastion_host" "azure-bastion" {
  name                = var.bastin_host_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  ip_configuration {
    name                 = var.ip_config_name
    subnet_id            = azurerm_subnet.snet_azure_bastion_service.id
    public_ip_address_id = azurerm_public_ip.pip_azure_bastion.id
  }
}
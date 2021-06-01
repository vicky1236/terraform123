# Create a resource group for the azure resources
resource "azurerm_resource_group" "my_rg" {
  name     = var.resource_group_name
  location = var.location
} 
# Create the AKS Cluster
##
resource "azurerm_kubernetes_cluster" "my_aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  dns_prefix          = var.dns_prefix_name
  # Make the cluster private
  private_cluster_enabled = true
  # Improve security using Azure AD, K8s roles and rolebindings. 
  # Each Azure AD user can gets his personal kubeconfig and permissions managed through AD Groups and Rolebindings
  role_based_access_control {
    enabled = true
  }
  # Enable Kubernetes Dashboard, if needed
  addon_profile {
    kube_dashboard {
      enabled = false
    }
  }
  # To prevent CIDR collition with the 10.0.0.0/16 Vnet
  network_profile {
    network_plugin     = "kubenet"
    docker_bridge_cidr = var.docker_bridge
    dns_service_ip     = var.dns_service
    service_cidr       = var.service_cid
    pod_cidr           = var.pod_cid
  }
  default_node_pool {
    name           = var.node_pool_name
    node_count     = var.nodecount
    vm_size        = var.vmsize
    vnet_subnet_id = var.addrees_prefixes
  }
  identity {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "dev"
  }
}
# Link the Bastion Vnet to the Private DNS Zone generated to resolve the Server IP from the URL in Kubeconfig
##
resource "azurerm_private_dns_zone_virtual_network_link" "link_bastion_cluster" {
  name = "dnslink-bastion-cluster"
  # The Terraform language does not support user-defined functions, and so only the functions built in to the language are available for use.
  # The below code gets the private dns zone name from the fqdn, by slicing the out dns prefix
  private_dns_zone_name = join(".", slice(split(".", azurerm_kubernetes_cluster.my_aks.private_fqdn), 1, length(split(".", azurerm_kubernetes_cluster.my_aks.private_fqdn))))
  resource_group_name   = "MC_${azurerm_resource_group.my_rg.name}_${azurerm_kubernetes_cluster.my_aks.name}_${var.location}"
  virtual_network_id    = var.address_space
}

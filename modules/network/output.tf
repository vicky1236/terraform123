output "vpc_subnet" {
  value = azurerm_subnet.snet_cluster.id
}
output "bastion_id" {
  value = azurerm_virtual_network.vnet_bastion.id
}




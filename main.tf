provider "azurerm" {
  features {}
}
#  Terraform Settings Block
terraform {
  #  Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.39.0"
    }
  }
}
resource "azurerm_resource_group" "my_rg" {
 name     = var.resource_group_name
 location = var.location
}
module "cluster" {
  source           = ".//modules/cluster"
  resource_group_name = azurerm_resource_group.my_rg.name
  addrees_prefixes = module.network.vpc_subnet
  address_space    = module.network.bastion_id
  location         = var.location
}
module "network" {
  source   = ".//modules/network"
  resource_group_name = azurerm_resource_group.my_rg.name
  location = var.location
}

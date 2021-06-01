variable "location" {
  
}

# Azure Resource Group Name
variable "resource_group_name" {
   type        = string
  description = "This variable defines the Resource Group"
  

} 
variable "vnet_name" {
    type = string 
    default = "vnet-private-aks"
  
}
variable "subnet_name" {
    type = string
    default = "snet-private-aks"
  
}
variable "bastin_vnet_name" {
    type = string
    default = "vnet-bastion"
  
}
variable "bastin_subnet_name" {
    type = string
    default = "snet-bastion"
  
}
variable "bastinservice_subnet_name" {
    type = string
    default = "AzureBastionSubnet"
  
}
variable "cluster_bastion_peering" {
    type = string
    default = "peering_cluster_bastion"
  
}
variable "bastion_cluster_peering" {
    type = string
    default = "peering_bastion_cluster"
  
}
variable "cache" {
    type = string
    default = "ReadWrite"
  
}
variable "sc_type" {
    type = string
    default = "Standard_LRS"
  
}
variable "pub_type" {
    type = string
    default = "Canonical"
  
}
variable "offer_type" {
    type = string
    default = "UbuntuServer"
  
}
variable "sku_type" {
    type = string
    default = "16.04-LTS"
  
}
variable "sku_type_bas" {
    type = string
    default = "Standard"
  
}
variable "vers_type" {
    type = string
    default = "latest"
  
}
variable "pub_ip_name" {
    type = string
    default = "pip-azure-bastion"
  
}
variable "alloc_meth" {
    type = string
    default = "Static"
}
variable "bastin_host_name" {
    type = string
    default = "azure-bastion"
}
variable "ip_config_name" {
    type = string
    default = "configuration"
}

variable "bastin_nic_name" {
  type        = string
  default     = "nic-bastion"
}
variable "ip_configname" {
  type        = string
  default     = "internal"
}
variable "ip_allocation" {
  type        = string
  default     = "Dynamic"
}
variable "cluster_vnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.1.0.0/16"]
}
variable "cluster_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.1.0.0/24"]
}
variable "bastin_vnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.0.0/16"]
} 
variable "bastin_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.0.0/24"]
}
variable "bastinservice_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

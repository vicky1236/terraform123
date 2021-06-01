variable "location" {
  
}

# Azure Resource Group Name
variable "resource_group_name" {
   type        = string
  description = "This variable defines the Resource Group"
  

} 
variable "cluster_name" {
    type = string 
    default = "humana-aks-cluster"
  
}
variable "dns_prefix_name" {
    type = string 
    default = "aks-cluster"
  
}
variable "node_pool_name" {
    type = string 
    default = "humana"
  
}
variable "nodecount" {
    type = number
    default = 1
  
}
variable "vmsize" {
    type = string
    default = "Standard_D2_v2"
  
}
variable "addrees_prefixes" {
  
}
variable "address_space" {
  
}
variable "docker_bridge" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "192.167.0.1/16"
}
variable "dns_service" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "192.168.1.1"
}
variable "service_cid" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "192.168.0.0/16"
}
variable "pod_cid" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "172.16.0.0/22"
}
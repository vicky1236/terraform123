variable "location" {
  type        = string
  description = "Azure Region where all these resources will be provisioned"
  default     = "eastus"
}
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
  default     = "bg"
} 
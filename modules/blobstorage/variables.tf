variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
  default     = "default"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to be applied to the storage account"
  type        = map(string)
  default     = {}
}

# Azure Subscription
variable "kv_tenant_id" {
  description = "The Tenant ID"
  type        = string
}

variable "kv_object_id" {
  description = "The SPN Object ID"
  type        = string
}

# Resource Group
variable "kv_rg_name" {
  description = "The Resource Group Name hosting the KeyVault"
  type        = string
}

variable "kv_rg_location" {
  description = "The Location of the Resource Group"
  type        = string
}

# KeyVault
variable "kv_name" {
  description = "The Name of the Resource"
  type = string
}

variable "kv_sku" {
  description = "The SKU of the KeyVault. Values are: Standard, "
  type        = string
}

variable "kv_tags" {
  description = "The KeyVault Tags"
  type        = map(string)
}
terraform {
  required_version = "=0.14.3"
}

resource "azurerm_key_vault" "kv" {
  name                     = "${var.kv_name}-kv"
  resource_group_name      = var.kv_rg_name
  location                 = var.kv_rg_location
  tenant_id                = var.kv_tenant_id
  sku_name                 = var.kv_sku
  purge_protection_enabled = false
  enabled_for_deployment   = true
  tags                     = var.kv_tags
}

resource "azurerm_key_vault_access_policy" "kvpol" {
  key_vault_id = azurerm_key_vault.kv.id
  tenant_id = var.kv_tenant_id
  object_id = var.kv_object_id

  secret_permissions = [
      "get",
      "set",
      "list",
      "delete",
  ]

  key_permissions = [
      "create",
      "list",
      "get",
  ]

  certificate_permissions = [
      "get",
      "list",
      "update",
  ]
}
data "azurerm_client" "current"{}

resource "azurerm_key_vault" "keywalt37" {
  name                        = var.kv_name
  location                    = azurerm_resource_group.ysr1.location
  resource_group_name         = azurerm_resource_group.ysr1.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"
}

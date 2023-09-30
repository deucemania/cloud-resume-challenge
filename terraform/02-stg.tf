
resource "azurerm_storage_account" "static_storage" {
  name                      = var.stg_name
  resource_group_name       = var.rg_name
  location                  = var.location
  account_kind              = var.stg_kind
  account_tier              = var.stg_tier
  account_replication_type  = var.stg_replication
  enable_https_traffic_only = var.stg_enable_https_only

  static_website {
    index_document = var.stg_static_doc
  }

  tags = {
    product = var.product
  }
}
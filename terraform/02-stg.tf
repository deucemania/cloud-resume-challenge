
resource "azurerm_storage_account" "static_storage" {
  name                      = "stgdeucecaclappresume"
  resource_group_name       = var.rg_name
  location                  = var.location
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }

  tags = {
    product = var.product
  }
}
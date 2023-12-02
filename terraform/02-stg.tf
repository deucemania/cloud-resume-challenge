
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

resource "azurerm_cdn_profile" "cdn_profile_static_storage" {
  name                = "cdn-deucemania-resume"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "Standard_Verizon"
}

resource "azurerm_cdn_endpoint" "cdn_endpoint_static_storage" {
  name                = "deucemania"
  profile_name        = azurerm_cdn_profile.cdn_profile_static_storage.name
  location            = var.location
  resource_group_name = var.rg_name

  origin {
    name               = "deucemania"
    host_name          = "stgdeucecaclappresume.z9.web.core.windows.net"
  }
  origin_host_header = "stgdeucecaclappresume.z9.web.core.windows.net"
}

resource "azurerm_cdn_endpoint_custom_domain" "cdn_endpoint_custom_domain" {
  name            = "resume-deucemania-com"
  cdn_endpoint_id = azurerm_cdn_endpoint.cdn_endpoint_static_storage.id
  host_name       = "resume.deucemania.com"
}

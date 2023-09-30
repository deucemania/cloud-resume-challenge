variable "product" {
  type = string
  description = "Product Name"
}

variable "location" {
  type = string
  description = "Azure Region"
}

variable "rg_name" {
  type = string
  description = "Resouce Group Name"
}

variable "stg_name" {
  type = string
  description = "Storage Account Name"
}

variable "stg_kind" {
  type = string
  description = "Storage Kind"
}

variable "stg_tier" {
  type = string
  description = "SKU"
}

variable "stg_replication" {
  type = string
  description = "Replication type"
}

variable "stg_enable_https_only" {
  type = bool
  description = "Enable HTTPS Traffic Only"
}

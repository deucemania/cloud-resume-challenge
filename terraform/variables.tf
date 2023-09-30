variable "product" {
  type        = string
  description = "Product name"
}

variable "location" {
  type        = string
  description = "Azure Region"
}

variable "rg_name" {
  type        = string
  description = "Resouce Group name"
}

variable "stg_name" {
  type        = string
  description = "Storage Account name"
}

variable "stg_kind" {
  type        = string
  description = "Storage kind"
}

variable "stg_tier" {
  type        = string
  description = "SKU"
}

variable "stg_replication" {
  type        = string
  description = "Replication type"
}

variable "stg_enable_https_only" {
  type        = bool
  description = "Enable HTTPS traffic only"
}

variable "stg_static_doc" {
  type        = string
  description = "Target static file name"
}

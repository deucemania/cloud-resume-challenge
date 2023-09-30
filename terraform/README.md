# Azure Cloud Resume 
Azure Cloud Resume Challenge Terraform  

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.static_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Azure Region | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | Product name | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resouce Group name | `string` | n/a | yes |
| <a name="input_stg_enable_https_only"></a> [stg\_enable\_https\_only](#input\_stg\_enable\_https\_only) | Enable HTTPS traffic only | `bool` | n/a | yes |
| <a name="input_stg_kind"></a> [stg\_kind](#input\_stg\_kind) | Storage kind | `string` | n/a | yes |
| <a name="input_stg_name"></a> [stg\_name](#input\_stg\_name) | Storage Account name | `string` | n/a | yes |
| <a name="input_stg_replication"></a> [stg\_replication](#input\_stg\_replication) | Replication type | `string` | n/a | yes |
| <a name="input_stg_static_doc"></a> [stg\_static\_doc](#input\_stg\_static\_doc) | Target static file name | `string` | n/a | yes |
| <a name="input_stg_tier"></a> [stg\_tier](#input\_stg\_tier) | SKU | `string` | n/a | yes |

## Outputs

No outputs.
output "databricks_workspaces_access_connector_id" {
  description = "Map of access_connector_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.access_connector_id }
}
output "databricks_workspaces_custom_parameters" {
  description = "Map of custom_parameters values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.custom_parameters }
}
output "databricks_workspaces_customer_managed_key_enabled" {
  description = "Map of customer_managed_key_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.customer_managed_key_enabled }
}
output "databricks_workspaces_default_storage_firewall_enabled" {
  description = "Map of default_storage_firewall_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.default_storage_firewall_enabled }
}
output "databricks_workspaces_disk_encryption_set_id" {
  description = "Map of disk_encryption_set_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.disk_encryption_set_id }
}
output "databricks_workspaces_enhanced_security_compliance" {
  description = "Map of enhanced_security_compliance values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.enhanced_security_compliance }
}
output "databricks_workspaces_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.infrastructure_encryption_enabled }
}
output "databricks_workspaces_load_balancer_backend_address_pool_id" {
  description = "Map of load_balancer_backend_address_pool_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.load_balancer_backend_address_pool_id }
}
output "databricks_workspaces_location" {
  description = "Map of location values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.location }
}
output "databricks_workspaces_managed_disk_cmk_key_vault_id" {
  description = "Map of managed_disk_cmk_key_vault_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_key_vault_id }
}
output "databricks_workspaces_managed_disk_cmk_key_vault_key_id" {
  description = "Map of managed_disk_cmk_key_vault_key_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_key_vault_key_id }
}
output "databricks_workspaces_managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "Map of managed_disk_cmk_rotation_to_latest_version_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_rotation_to_latest_version_enabled }
}
output "databricks_workspaces_managed_disk_identity" {
  description = "Map of managed_disk_identity values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_identity }
}
output "databricks_workspaces_managed_resource_group_id" {
  description = "Map of managed_resource_group_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_resource_group_id }
}
output "databricks_workspaces_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_resource_group_name }
}
output "databricks_workspaces_managed_services_cmk_key_vault_id" {
  description = "Map of managed_services_cmk_key_vault_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_services_cmk_key_vault_id }
}
output "databricks_workspaces_managed_services_cmk_key_vault_key_id" {
  description = "Map of managed_services_cmk_key_vault_key_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_services_cmk_key_vault_key_id }
}
output "databricks_workspaces_name" {
  description = "Map of name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.name }
}
output "databricks_workspaces_network_security_group_rules_required" {
  description = "Map of network_security_group_rules_required values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.network_security_group_rules_required }
}
output "databricks_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.public_network_access_enabled }
}
output "databricks_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.resource_group_name }
}
output "databricks_workspaces_sku" {
  description = "Map of sku values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.sku }
}
output "databricks_workspaces_storage_account_identity" {
  description = "Map of storage_account_identity values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.storage_account_identity }
}
output "databricks_workspaces_tags" {
  description = "Map of tags values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.tags }
}
output "databricks_workspaces_workspace_id" {
  description = "Map of workspace_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.workspace_id }
}
output "databricks_workspaces_workspace_url" {
  description = "Map of workspace_url values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.workspace_url }
}


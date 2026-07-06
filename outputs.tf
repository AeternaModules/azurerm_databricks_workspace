output "databricks_workspaces" {
  description = "All databricks_workspace resources"
  value       = azurerm_databricks_workspace.databricks_workspaces
}
output "databricks_workspaces_access_connector_id" {
  description = "List of access_connector_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.access_connector_id]
}
output "databricks_workspaces_custom_parameters" {
  description = "List of custom_parameters values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.custom_parameters]
}
output "databricks_workspaces_customer_managed_key_enabled" {
  description = "List of customer_managed_key_enabled values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.customer_managed_key_enabled]
}
output "databricks_workspaces_default_storage_firewall_enabled" {
  description = "List of default_storage_firewall_enabled values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.default_storage_firewall_enabled]
}
output "databricks_workspaces_disk_encryption_set_id" {
  description = "List of disk_encryption_set_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.disk_encryption_set_id]
}
output "databricks_workspaces_enhanced_security_compliance" {
  description = "List of enhanced_security_compliance values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.enhanced_security_compliance]
}
output "databricks_workspaces_infrastructure_encryption_enabled" {
  description = "List of infrastructure_encryption_enabled values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.infrastructure_encryption_enabled]
}
output "databricks_workspaces_load_balancer_backend_address_pool_id" {
  description = "List of load_balancer_backend_address_pool_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.load_balancer_backend_address_pool_id]
}
output "databricks_workspaces_location" {
  description = "List of location values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.location]
}
output "databricks_workspaces_managed_disk_cmk_key_vault_id" {
  description = "List of managed_disk_cmk_key_vault_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_disk_cmk_key_vault_id]
}
output "databricks_workspaces_managed_disk_cmk_key_vault_key_id" {
  description = "List of managed_disk_cmk_key_vault_key_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_disk_cmk_key_vault_key_id]
}
output "databricks_workspaces_managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "List of managed_disk_cmk_rotation_to_latest_version_enabled values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_disk_cmk_rotation_to_latest_version_enabled]
}
output "databricks_workspaces_managed_disk_identity" {
  description = "List of managed_disk_identity values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_disk_identity]
}
output "databricks_workspaces_managed_resource_group_id" {
  description = "List of managed_resource_group_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_resource_group_id]
}
output "databricks_workspaces_managed_resource_group_name" {
  description = "List of managed_resource_group_name values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_resource_group_name]
}
output "databricks_workspaces_managed_services_cmk_key_vault_id" {
  description = "List of managed_services_cmk_key_vault_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_services_cmk_key_vault_id]
}
output "databricks_workspaces_managed_services_cmk_key_vault_key_id" {
  description = "List of managed_services_cmk_key_vault_key_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.managed_services_cmk_key_vault_key_id]
}
output "databricks_workspaces_name" {
  description = "List of name values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.name]
}
output "databricks_workspaces_network_security_group_rules_required" {
  description = "List of network_security_group_rules_required values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.network_security_group_rules_required]
}
output "databricks_workspaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.public_network_access_enabled]
}
output "databricks_workspaces_resource_group_name" {
  description = "List of resource_group_name values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.resource_group_name]
}
output "databricks_workspaces_sku" {
  description = "List of sku values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.sku]
}
output "databricks_workspaces_storage_account_identity" {
  description = "List of storage_account_identity values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.storage_account_identity]
}
output "databricks_workspaces_tags" {
  description = "List of tags values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.tags]
}
output "databricks_workspaces_workspace_id" {
  description = "List of workspace_id values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.workspace_id]
}
output "databricks_workspaces_workspace_url" {
  description = "List of workspace_url values across all databricks_workspaces"
  value       = [for k, v in azurerm_databricks_workspace.databricks_workspaces : v.workspace_url]
}


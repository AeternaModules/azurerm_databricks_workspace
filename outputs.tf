output "databricks_workspaces_id" {
  description = "Map of id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "databricks_workspaces_access_connector_id" {
  description = "Map of access_connector_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.access_connector_id if v.access_connector_id != null && length(v.access_connector_id) > 0 }
}
output "databricks_workspaces_custom_parameters" {
  description = "Map of custom_parameters values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => one(v.custom_parameters) if v.custom_parameters != null && length(v.custom_parameters) > 0 }
}
output "databricks_workspaces_customer_managed_key_enabled" {
  description = "Map of customer_managed_key_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.customer_managed_key_enabled if v.customer_managed_key_enabled != null }
}
output "databricks_workspaces_default_storage_firewall_enabled" {
  description = "Map of default_storage_firewall_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.default_storage_firewall_enabled if v.default_storage_firewall_enabled != null }
}
output "databricks_workspaces_disk_encryption_set_id" {
  description = "Map of disk_encryption_set_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.disk_encryption_set_id if v.disk_encryption_set_id != null && length(v.disk_encryption_set_id) > 0 }
}
output "databricks_workspaces_enhanced_security_compliance" {
  description = "Map of enhanced_security_compliance values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => one(v.enhanced_security_compliance) if v.enhanced_security_compliance != null && length(v.enhanced_security_compliance) > 0 }
}
output "databricks_workspaces_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.infrastructure_encryption_enabled if v.infrastructure_encryption_enabled != null }
}
output "databricks_workspaces_load_balancer_backend_address_pool_id" {
  description = "Map of load_balancer_backend_address_pool_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.load_balancer_backend_address_pool_id if v.load_balancer_backend_address_pool_id != null && length(v.load_balancer_backend_address_pool_id) > 0 }
}
output "databricks_workspaces_location" {
  description = "Map of location values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "databricks_workspaces_managed_disk_cmk_key_vault_id" {
  description = "Map of managed_disk_cmk_key_vault_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_key_vault_id if v.managed_disk_cmk_key_vault_id != null && length(v.managed_disk_cmk_key_vault_id) > 0 }
}
output "databricks_workspaces_managed_disk_cmk_key_vault_key_id" {
  description = "Map of managed_disk_cmk_key_vault_key_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_key_vault_key_id if v.managed_disk_cmk_key_vault_key_id != null && length(v.managed_disk_cmk_key_vault_key_id) > 0 }
}
output "databricks_workspaces_managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "Map of managed_disk_cmk_rotation_to_latest_version_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_cmk_rotation_to_latest_version_enabled if v.managed_disk_cmk_rotation_to_latest_version_enabled != null }
}
output "databricks_workspaces_managed_disk_identity" {
  description = "Map of managed_disk_identity values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_disk_identity if v.managed_disk_identity != null && length(v.managed_disk_identity) > 0 }
}
output "databricks_workspaces_managed_resource_group_id" {
  description = "Map of managed_resource_group_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_resource_group_id if v.managed_resource_group_id != null && length(v.managed_resource_group_id) > 0 }
}
output "databricks_workspaces_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_resource_group_name if v.managed_resource_group_name != null && length(v.managed_resource_group_name) > 0 }
}
output "databricks_workspaces_managed_services_cmk_key_vault_id" {
  description = "Map of managed_services_cmk_key_vault_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_services_cmk_key_vault_id if v.managed_services_cmk_key_vault_id != null && length(v.managed_services_cmk_key_vault_id) > 0 }
}
output "databricks_workspaces_managed_services_cmk_key_vault_key_id" {
  description = "Map of managed_services_cmk_key_vault_key_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.managed_services_cmk_key_vault_key_id if v.managed_services_cmk_key_vault_key_id != null && length(v.managed_services_cmk_key_vault_key_id) > 0 }
}
output "databricks_workspaces_name" {
  description = "Map of name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "databricks_workspaces_network_security_group_rules_required" {
  description = "Map of network_security_group_rules_required values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.network_security_group_rules_required if v.network_security_group_rules_required != null && length(v.network_security_group_rules_required) > 0 }
}
output "databricks_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "databricks_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "databricks_workspaces_sku" {
  description = "Map of sku values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "databricks_workspaces_storage_account_identity" {
  description = "Map of storage_account_identity values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.storage_account_identity if v.storage_account_identity != null && length(v.storage_account_identity) > 0 }
}
output "databricks_workspaces_tags" {
  description = "Map of tags values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "databricks_workspaces_workspace_id" {
  description = "Map of workspace_id values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}
output "databricks_workspaces_workspace_url" {
  description = "Map of workspace_url values across all databricks_workspaces, keyed the same as var.databricks_workspaces"
  value       = { for k, v in azurerm_databricks_workspace.databricks_workspaces : k => v.workspace_url if v.workspace_url != null && length(v.workspace_url) > 0 }
}


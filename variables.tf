variable "databricks_workspaces" {
  description = <<EOT
Map of databricks_workspaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - access_connector_id
    - customer_managed_key_enabled
    - default_storage_firewall_enabled
    - infrastructure_encryption_enabled
    - load_balancer_backend_address_pool_id
    - managed_disk_cmk_key_vault_id
    - managed_disk_cmk_key_vault_key_id
    - managed_disk_cmk_rotation_to_latest_version_enabled
    - managed_resource_group_name
    - managed_services_cmk_key_vault_id
    - managed_services_cmk_key_vault_key_id
    - network_security_group_rules_required
    - public_network_access_enabled
    - tags
    - custom_parameters (block):
        - machine_learning_workspace_id (optional)
        - nat_gateway_name (optional)
        - no_public_ip (optional)
        - private_subnet_name (optional)
        - private_subnet_network_security_group_association_id (optional)
        - public_ip_name (optional)
        - public_subnet_name (optional)
        - public_subnet_network_security_group_association_id (optional)
        - storage_account_name (optional)
        - storage_account_sku_name (optional)
        - virtual_network_id (optional)
        - vnet_address_prefix (optional)
    - enhanced_security_compliance (block):
        - automatic_cluster_update_enabled (optional)
        - compliance_security_profile_enabled (optional)
        - compliance_security_profile_standards (optional)
        - enhanced_security_monitoring_enabled (optional)
EOT

  type = map(object({
    location                                            = string
    name                                                = string
    resource_group_name                                 = string
    sku                                                 = string
    network_security_group_rules_required               = optional(string)
    managed_services_cmk_key_vault_key_id               = optional(string)
    managed_services_cmk_key_vault_id                   = optional(string)
    managed_resource_group_name                         = optional(string)
    managed_disk_cmk_rotation_to_latest_version_enabled = optional(bool)
    managed_disk_cmk_key_vault_key_id                   = optional(string)
    load_balancer_backend_address_pool_id               = optional(string)
    public_network_access_enabled                       = optional(bool, true)
    infrastructure_encryption_enabled                   = optional(bool, false)
    default_storage_firewall_enabled                    = optional(bool)
    customer_managed_key_enabled                        = optional(bool, false)
    access_connector_id                                 = optional(string)
    managed_disk_cmk_key_vault_id                       = optional(string)
    tags                                                = optional(map(string))
    custom_parameters = optional(object({
      machine_learning_workspace_id                        = optional(string)
      nat_gateway_name                                     = optional(string)
      no_public_ip                                         = optional(bool, true)
      private_subnet_name                                  = optional(string)
      private_subnet_network_security_group_association_id = optional(string)
      public_ip_name                                       = optional(string)
      public_subnet_name                                   = optional(string)
      public_subnet_network_security_group_association_id  = optional(string)
      storage_account_name                                 = optional(string)
      storage_account_sku_name                             = optional(string)
      virtual_network_id                                   = optional(string)
      vnet_address_prefix                                  = optional(string)
    }))
    enhanced_security_compliance = optional(object({
      automatic_cluster_update_enabled      = optional(bool, false)
      compliance_security_profile_enabled   = optional(bool, false)
      compliance_security_profile_standards = optional(set(string))
      enhanced_security_monitoring_enabled  = optional(bool, false)
    }))
  }))
}


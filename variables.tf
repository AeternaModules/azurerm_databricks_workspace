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
    public_network_access_enabled                       = optional(bool)
    infrastructure_encryption_enabled                   = optional(bool)
    default_storage_firewall_enabled                    = optional(bool)
    customer_managed_key_enabled                        = optional(bool)
    access_connector_id                                 = optional(string)
    managed_disk_cmk_key_vault_id                       = optional(string)
    tags                                                = optional(map(string))
    custom_parameters = optional(object({
      machine_learning_workspace_id                        = optional(string)
      nat_gateway_name                                     = optional(string)
      no_public_ip                                         = optional(bool)
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
      automatic_cluster_update_enabled      = optional(bool)
      compliance_security_profile_enabled   = optional(bool)
      compliance_security_profile_standards = optional(set(string))
      enhanced_security_monitoring_enabled  = optional(bool)
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_databricks_workspace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.WorkspaceName] !ok
  # path: name
  #   condition: length(value) != 0
  #   message:   [from validate.WorkspaceName: invalid when len(value) == 0]
  #   source:    [from validate.WorkspaceName: invalid when len(value) == 0]
  # path: name
  #   condition: length(value) >= 3
  #   message:   [from validate.WorkspaceName: invalid when len(value) < 3]
  #   source:    [from validate.WorkspaceName: invalid when len(value) < 3]
  # path: name
  #   condition: length(value) <= 64
  #   message:   [from validate.WorkspaceName: invalid when len(value) > 64]
  #   source:    [from validate.WorkspaceName: invalid when len(value) > 64]
  # path: name
  #   source:    [from validate.WorkspaceName] !regexp.MustCompile("^[a-zA-Z0-9_-]*$").MatchString(v)
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: sku
  #   condition: contains(["standard", "premium", "trial"], value)
  #   message:   must be one of: standard, premium, trial
  # path: managed_resource_group_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: network_security_group_rules_required
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: load_balancer_backend_address_pool_id
  #   source:    [from loadbalancers.ValidateLoadBalancerBackendAddressPoolID] !ok
  # path: load_balancer_backend_address_pool_id
  #   source:    [from loadbalancers.ValidateLoadBalancerBackendAddressPoolID] err != nil
  # path: custom_parameters.machine_learning_workspace_id
  #   source:    [from mlworkspace.ValidateWorkspaceID] !ok
  # path: custom_parameters.machine_learning_workspace_id
  #   source:    [from mlworkspace.ValidateWorkspaceID] err != nil
  # path: custom_parameters.public_subnet_network_security_group_association_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: custom_parameters.public_subnet_network_security_group_association_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: custom_parameters.private_subnet_network_security_group_association_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: custom_parameters.private_subnet_network_security_group_association_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: custom_parameters.virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: custom_parameters.virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
  # path: custom_parameters.storage_account_name
  #   source:    [from storageValidate.StorageAccountName] !regexp.MustCompile(`\A([a-z0-9]{3,24})\z`).MatchString(input)
  # path: managed_services_cmk_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_services_cmk_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: managed_services_cmk_key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] !ok
  # path: managed_services_cmk_key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] err != nil
  # path: managed_disk_cmk_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_disk_cmk_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: managed_disk_cmk_key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] !ok
  # path: managed_disk_cmk_key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] err != nil
  # path: enhanced_security_compliance.compliance_security_profile_standards[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}


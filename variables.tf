variable "workspaces_workspaces" {
  description = <<EOT
Map of workspaces_workspaces, attributes below
Required:
    - bundle_id
    - directory_id
    - user_name
Optional:
    - region
    - root_volume_encryption_enabled
    - tags
    - tags_all
    - user_volume_encryption_enabled
    - volume_encryption_key
    - workspace_properties (block):
        - compute_type_name (optional)
        - root_volume_size_gib (optional)
        - running_mode (optional)
        - running_mode_auto_stop_timeout_in_minutes (optional)
        - user_volume_size_gib (optional)
EOT

  type = map(object({
    bundle_id                      = string
    directory_id                   = string
    user_name                      = string
    region                         = optional(string)
    root_volume_encryption_enabled = optional(bool)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
    user_volume_encryption_enabled = optional(bool)
    volume_encryption_key          = optional(string)
    workspace_properties = optional(object({
      compute_type_name                         = optional(string)
      root_volume_size_gib                      = optional(number)
      running_mode                              = optional(string)
      running_mode_auto_stop_timeout_in_minutes = optional(number)
      user_volume_size_gib                      = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workspaces_workspaces : (
        v.workspace_properties == null || (v.workspace_properties.root_volume_size_gib == null || ((contains([80], v.workspace_properties.root_volume_size_gib)) || (v.workspace_properties.root_volume_size_gib >= 175 && v.workspace_properties.root_volume_size_gib <= 2000)))
      )
    ])
    error_message = "any of: must be one of: 80; must be between 175 and 2000"
  }
  validation {
    condition = alltrue([
      for k, v in var.workspaces_workspaces : (
        v.workspace_properties == null || (v.workspace_properties.user_volume_size_gib == null || ((contains([10, 50], v.workspace_properties.user_volume_size_gib)) || (v.workspace_properties.user_volume_size_gib >= 100 && v.workspace_properties.user_volume_size_gib <= 2000)))
      )
    ])
    error_message = "any of: must be one of: 10, 50; must be between 100 and 2000"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


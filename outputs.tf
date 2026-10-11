output "workspaces_workspaces_id" {
  description = "Map of id values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspaces_workspaces_bundle_id" {
  description = "Map of bundle_id values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.bundle_id if v.bundle_id != null && length(v.bundle_id) > 0 }
}
output "workspaces_workspaces_computer_name" {
  description = "Map of computer_name values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.computer_name if v.computer_name != null && length(v.computer_name) > 0 }
}
output "workspaces_workspaces_directory_id" {
  description = "Map of directory_id values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "workspaces_workspaces_ip_address" {
  description = "Map of ip_address values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "workspaces_workspaces_region" {
  description = "Map of region values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.region if v.region != null && length(v.region) > 0 }
}
output "workspaces_workspaces_root_volume_encryption_enabled" {
  description = "Map of root_volume_encryption_enabled values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.root_volume_encryption_enabled if v.root_volume_encryption_enabled != null }
}
output "workspaces_workspaces_state" {
  description = "Map of state values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.state if v.state != null && length(v.state) > 0 }
}
output "workspaces_workspaces_tags" {
  description = "Map of tags values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workspaces_workspaces_tags_all" {
  description = "Map of tags_all values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "workspaces_workspaces_user_name" {
  description = "Map of user_name values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}
output "workspaces_workspaces_user_volume_encryption_enabled" {
  description = "Map of user_volume_encryption_enabled values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.user_volume_encryption_enabled if v.user_volume_encryption_enabled != null }
}
output "workspaces_workspaces_volume_encryption_key" {
  description = "Map of volume_encryption_key values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => v.volume_encryption_key if v.volume_encryption_key != null && length(v.volume_encryption_key) > 0 }
}
output "workspaces_workspaces_workspace_properties" {
  description = "Map of workspace_properties values across all workspaces_workspaces, keyed the same as var.workspaces_workspaces"
  value       = { for k, v in aws_workspaces_workspace.workspaces_workspaces : k => one(v.workspace_properties) if v.workspace_properties != null && length(v.workspace_properties) > 0 }
}


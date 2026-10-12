output "grant_database_roles_id" {
  description = "Map of id values across all grant_database_roles, keyed the same as var.grant_database_roles except keys with no id are omitted"
  value       = { for k, v in snowflake_grant_database_role.grant_database_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grant_database_roles_database_role_name" {
  description = "Map of database_role_name values across all grant_database_roles, keyed the same as var.grant_database_roles except keys with no database_role_name are omitted"
  value       = { for k, v in snowflake_grant_database_role.grant_database_roles : k => v.database_role_name if v.database_role_name != null && length(v.database_role_name) > 0 }
}
output "grant_database_roles_parent_database_role_name" {
  description = "Map of parent_database_role_name values across all grant_database_roles, keyed the same as var.grant_database_roles except keys with no parent_database_role_name are omitted"
  value       = { for k, v in snowflake_grant_database_role.grant_database_roles : k => v.parent_database_role_name if v.parent_database_role_name != null && length(v.parent_database_role_name) > 0 }
}
output "grant_database_roles_parent_role_name" {
  description = "Map of parent_role_name values across all grant_database_roles, keyed the same as var.grant_database_roles except keys with no parent_role_name are omitted"
  value       = { for k, v in snowflake_grant_database_role.grant_database_roles : k => v.parent_role_name if v.parent_role_name != null && length(v.parent_role_name) > 0 }
}
output "grant_database_roles_share_name" {
  description = "Map of share_name values across all grant_database_roles, keyed the same as var.grant_database_roles except keys with no share_name are omitted"
  value       = { for k, v in snowflake_grant_database_role.grant_database_roles : k => v.share_name if v.share_name != null && length(v.share_name) > 0 }
}


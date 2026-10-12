resource "snowflake_grant_database_role" "grant_database_roles" {
  for_each = var.grant_database_roles

  database_role_name        = each.value.database_role_name
  parent_database_role_name = each.value.parent_database_role_name
  parent_role_name          = each.value.parent_role_name
  share_name                = each.value.share_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}


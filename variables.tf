variable "grant_database_roles" {
  description = <<EOT
Map of grant_database_roles, attributes below
Required:
    - database_role_name
Optional:
    - parent_database_role_name
    - parent_role_name
    - share_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database_role_name        = string
    parent_database_role_name = optional(string)
    parent_role_name          = optional(string)
    share_name                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}


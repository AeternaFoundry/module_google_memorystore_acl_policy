variable "memorystore_acl_policies" {
  description = <<EOT
Map of memorystore_acl_policies, attributes below
Required:
    - acl_policy_id
    - location
    - rules (block):
        - rule (required)
        - username (required)
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    acl_policy_id   = string
    location        = string
    deletion_policy = optional(string)
    project         = optional(string)
    rules = list(object({
      rule     = string
      username = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.memorystore_acl_policies : (
        length(v.rules) >= 1
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
}


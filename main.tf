resource "google_memorystore_acl_policy" "memorystore_acl_policies" {
  for_each = var.memorystore_acl_policies

  acl_policy_id   = each.value.acl_policy_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "rules" {
    for_each = each.value.rules
    content {
      rule     = rules.value.rule
      username = rules.value.username
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


output "memorystore_acl_policies_id" {
  description = "Map of id values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no id are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "memorystore_acl_policies_acl_policy_id" {
  description = "Map of acl_policy_id values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no acl_policy_id are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.acl_policy_id if v.acl_policy_id != null && length(v.acl_policy_id) > 0 }
}
output "memorystore_acl_policies_deletion_policy" {
  description = "Map of deletion_policy values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "memorystore_acl_policies_etag" {
  description = "Map of etag values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no etag are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "memorystore_acl_policies_location" {
  description = "Map of location values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no location are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "memorystore_acl_policies_name" {
  description = "Map of name values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no name are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "memorystore_acl_policies_project" {
  description = "Map of project values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no project are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "memorystore_acl_policies_rules" {
  description = "Map of rules values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no rules are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "memorystore_acl_policies_state" {
  description = "Map of state values across all memorystore_acl_policies, keyed the same as var.memorystore_acl_policies except keys with no state are omitted"
  value       = { for k, v in google_memorystore_acl_policy.memorystore_acl_policies : k => v.state if v.state != null && length(v.state) > 0 }
}


locals {
  config = yamldecode(file("roles.yaml"))

  expanded_objects = flatten([
    for key, value in local.config.groups : [
      value
    ]
  ])
}



resource "google_project_iam_binding" "project" {
  project  = local.config.projectId
  for_each = {for key,roles in flatten(local.expanded_objects[*].roles): key=>roles}
  members = [for i in flatten([for key1, value1 in local.expanded_objects : value1.members
       if contains(value1.roles,each.value)
    ]):i]
  role = each.value
}
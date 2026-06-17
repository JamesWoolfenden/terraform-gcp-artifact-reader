resource "google_artifact_registry_repository_iam_member" "members" {
  for_each   = var.members
  project    = var.project
  location   = var.location
  repository = var.repository
  role       = "roles/artifactregistry.reader"
  member     = each.value
}

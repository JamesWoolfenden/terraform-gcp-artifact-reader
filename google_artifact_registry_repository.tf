resource "google_artifact_registry_repository_iam_member" "members" {
  for_each   = var.members
  project    = data.google_artifact_registry_repository.repo.project
  location   = data.google_artifact_registry_repository.repo.location
  repository = data.google_artifact_registry_repository.repo.name
  role       = "roles/artifactregistry.reader"
  member     = each.value
}

data "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = var.repo
}

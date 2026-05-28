resource "google_artifact_registry_repository" "pike" {
  #checkov:skip=CKV_GCP_84: example does not require CSEK encryption
  location      = "europe-west2"
  repository_id = "pike"
  format        = "DOCKER"
}

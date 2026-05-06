resource "google_artifact_registry_repository" "pike" {
  #checkov:skip=CKV_GCP_84: example does not require CSEK encryption
  location      = "europe-west2"
  repository_id = "pike"
  format        = "DOCKER"
}

module "reader" {
  source = "../../"
  region = "europe-west2"
  repo   = google_artifact_registry_repository.pike.repository_id
  members = [
    "user:james.woolfenden@gmail.com",
  ]
  depends_on = [google_artifact_registry_repository.pike]
}

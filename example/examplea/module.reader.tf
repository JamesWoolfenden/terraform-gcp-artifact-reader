# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "reader" {
  source     = "../../"
  project    = google_artifact_registry_repository.pike.project
  location   = google_artifact_registry_repository.pike.location
  repository = google_artifact_registry_repository.pike.repository_id
  members = [
    "user:james.woolfenden@gmail.com",
  ]
}

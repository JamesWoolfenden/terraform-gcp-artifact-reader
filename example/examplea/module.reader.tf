# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "reader" {
  source = "../../"
  region = "europe-west2"
  repo   = google_artifact_registry_repository.pike.repository_id
  members = [
    "user:james.woolfenden@gmail.com",
  ]
  depends_on = [google_artifact_registry_repository.pike]
}

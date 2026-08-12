resource "google_artifact_registry_repository" "pike" {
  location      = "europe-west2"
  repository_id = "pike"
  format        = "DOCKER"
  kms_key_name  = "projects/my-project/locations/europe-west2/keyRings/my-keyring/cryptoKeys/my-key"

  docker_config {
    immutable_tags = true
  }

  cleanup_policies {
    id     = "DELETE-TAGGED"
    action = "DELETE"
    condition {
      tag_state  = "TAGGED"
      older_than = "2592000s" # 30 days
    }
  }
}

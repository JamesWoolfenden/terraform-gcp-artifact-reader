module "reader" {
  source = "../../"
  region = "europe-west2"
  repo   = "pike-gcp"
  members = [
    "user:james.woolfenden@gmail.com",
  ]
}

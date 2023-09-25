module "reader" {
  source = "../../"
  region = "europe-west2"
  repo   = "pike"
  members = [
    "user:james.woolfenden@gmail.com",
  ]
}

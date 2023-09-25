variable "region" {
  type        = string
  description = "Location for the app"
}

variable "repo" {
  type        = string
  description = "Repository"
}

variable "members" {
  type        = set(string)
  description = "Those repo readers"
}

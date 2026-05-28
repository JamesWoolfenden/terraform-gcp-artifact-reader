variable "region" {
  type        = string
  description = "Location for the app"
  validation {
    condition     = length(var.region) > 0
    error_message = "Region must be specified"
  }
}

variable "repo" {
  type        = string
  description = "Repository"
  validation {
    condition     = length(var.repo) > 0
    error_message = "Repository name must be specified"
  }
}

variable "members" {
  type        = set(string)
  description = "Those repo readers"
  validation {
    condition     = length(var.members) > 0
    error_message = "At least one member must be specified"
  }
}

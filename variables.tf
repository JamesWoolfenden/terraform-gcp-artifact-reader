variable "project" {
  type        = string
  description = "Project the repository belongs to"
  validation {
    condition     = length(var.project) > 0
    error_message = "Project must be specified"
  }
}

variable "location" {
  type        = string
  description = "Location of the repository"
  validation {
    condition     = length(var.location) > 0
    error_message = "Location must be specified"
  }
}

variable "repository" {
  type        = string
  description = "Repository name"
  validation {
    condition     = length(var.repository) > 0
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
  validation {
    condition     = !contains(var.members, "allUsers") && !contains(var.members, "allAuthenticatedUsers")
    error_message = "Public/anonymous members (allUsers, allAuthenticatedUsers) are not allowed"
  }
}

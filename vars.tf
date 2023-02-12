variable "domain" {
  description = "The name of the domain."
  type        = string
}

variable "subdomain" {
  description = "The subdomain to use for the redirect."
  type        = string
}

variable "url" {
  description = "The full URL to redirect to. Schema included."
  type        = string
}

variable "permanent" {
  description = "Redirects with a 301 status code (defaults to 302 otherwise)"
  type        = bool
  default     = false
}

variable "path" {
  description = "Path to match on the hostname"
  type        = string
  default     = ""
}

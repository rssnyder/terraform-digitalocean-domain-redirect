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
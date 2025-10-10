# AWS config

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# Route53

variable "domain_name" {
  description = "The domain name for the application (e.g., example.com)"
  type        = string
  default     = "leazardlabs.site"
}

# Tags

variable "tags" {
  description = "A map of tags to assign to all resources"
  type        = map(string)
  default = {
    project = "j-llm"
    repo    = "https://github.com/karshkoff/j-llm-infra-bootstrap"
  }
}

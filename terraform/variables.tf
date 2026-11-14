variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
}

variable "project" {
  description = "Name used to tag all resources"
  type        = string
  default     = "flask-app"
}
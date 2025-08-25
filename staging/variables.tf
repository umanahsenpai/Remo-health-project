variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "Default region for resources"
}

variable "zone" {
  type        = string
  default     = "us-central1-a"
  description = "Default zone for zonal resources"
}
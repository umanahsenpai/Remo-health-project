variable "project_id" { type = string }
variable "region"     { type = string }
variable "private_cidr" {
  type    = string
  default = "10.0.1.0/24"
}
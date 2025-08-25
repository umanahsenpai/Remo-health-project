output "client_project" {
  value = data.google_client_config.current.project
}

output "client_region" {
  value = data.google_client_config.current.region
}

output "client_zone" {
  value = data.google_client_config.current.zone
}

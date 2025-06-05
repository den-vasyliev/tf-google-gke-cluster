output "config_host" {
  value = "https://${data.google_container_cluster.main.endpoint}"
}

output "config_token" {
  value     = module.gke_auth.token
  sensitive = true
}

output "config_ca" {
  value = base64decode(
    data.google_container_cluster.main.master_auth[0].cluster_ca_certificate,
  )
}

output "name" {
  value = google_container_cluster.this.name
}
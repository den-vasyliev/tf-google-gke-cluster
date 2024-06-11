# ${path.module} is an interpolated string in Terraform, which references the path to the current
# module. In this case, it returns the path to the directory containing the current module.

output "cluster_ca_certificate" {
  sensitive   = true
  value       = module.gke_auth.cluster_ca_certificate
  description = "Cluster ca certificate (base64 encoded)"
}

output "host" {
  value       = module.gke_auth.host
  description = "Cluster endpoint"
}

output "token" {
  sensitive   = true
  value       = module.gke_auth.token
  description = "The token value for use with the kubernetes provider."
}
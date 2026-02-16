output "container_names" {
  description = "Names of created containers."
  value       = [for c in docker_container.nginx : c.name]
}

output "external_ports" {
  description = "External ports mapped to the containers."
  value       = [for c in docker_container.nginx : c.ports[0].external]
}

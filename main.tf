terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

module "nginx_containers" {
  source = "./modules/nginx"

  image               = var.image
  container_count     = var.container_count
  name_prefix         = var.name_prefix
  port_start          = var.port_start
  container_memory_mb = var.container_memory_mb
  privileged          = var.privileged
  internal_port        = var.internal_port
}
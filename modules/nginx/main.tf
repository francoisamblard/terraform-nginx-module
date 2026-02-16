resource "docker_image" "nginx" {
  name         = var.image
  keep_locally = false
}

resource "docker_container" "nginx" {
  count = var.container_count

  image      = docker_image.nginx.image_id
  name       = "${var.name_prefix}-${count.index}"
  privileged = var.privileged

  memory = var.container_memory_mb > 0 ? var.container_memory_mb * 1024 * 1024 : null

  ports {
    internal = var.internal_port
    external = var.port_start + count.index
  }
}

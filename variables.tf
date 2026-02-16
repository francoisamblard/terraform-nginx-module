variable "image" {
  description = "Docker image to use."
  type        = string
  default     = "nginx:latest"
}

variable "container_count" {
  description = "Number of containers to spawn."
  type        = number
  default     = 1
}

variable "name_prefix" {
  description = "Prefix used to generate container names."
  type        = string
  default     = "terraform-nginx"
}

variable "port_start" {
  description = "Starting external port for the first container."
  type        = number
  default     = 8000
}

variable "container_memory_mb" {
  description = "Container memory in MB. Set to 0 to leave unset."
  type        = number
  default     = 0
}

variable "privileged" {
  description = "Run containers in privileged mode."
  type        = bool
  default     = false
}

variable "internal_port" {
  description = "Internal container port to expose."
  type        = number
  default     = 80
}

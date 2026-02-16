variable "image" {
  description = "Docker image to use."
  type        = string
}

variable "container_count" {
  description = "Number of containers to spawn."
  type        = number
}

variable "name_prefix" {
  description = "Prefix used to generate container names."
  type        = string
}

variable "port_start" {
  description = "Starting external port for the first container."
  type        = number
}

variable "container_memory_mb" {
  description = "Container memory in MB. Set to 0 to leave unset."
  type        = number
}

variable "privileged" {
  description = "Run containers in privileged mode."
  type        = bool
}

variable "internal_port" {
  description = "Internal container port to expose."
  type        = number
  default     = 80
}

variable "hcloud_token" {
  description = "(Required) API token"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "(Optional) Name if this cluster"
  type        = string
  default     = "docker-swarm-cluster"
}

variable "num_manager_nodes" {
  description = "(Required) Number of 'manager' nodes"
  type        = number
}

variable "num_worker_nodes" {
  description = "(Required) Number of 'worker' nodes"
  type        = number
}

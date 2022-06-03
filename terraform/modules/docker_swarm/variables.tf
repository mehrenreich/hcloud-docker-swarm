variable "cluster_name" {
  description = "(Required) Name of this cluster"
  type        = string
}

variable "num_manager_nodes" {
  description = "(Optional) Number of 'manager' nodes"
  type        = number
  default     = 1
}

variable "num_worker_nodes" {
  description = "(Optional) Number of 'worker' nodes"
  type        = number
  default     = 0
}

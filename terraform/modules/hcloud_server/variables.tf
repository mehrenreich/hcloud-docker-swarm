variable "name" {
  description = "(Required) Server name"
  type        = string
}

variable "type" {
  description = "(Optional) Server type"
  type        = string
  default     = "cx11"
}

variable "image" {
  description = "(Optional) Server image"
  type        = string
  default     = "ubuntu-20.04"
}

variable "location" {
  description = "(Optional) Server location"
  type        = string
  default     = "nbg1"
}

variable "network_id" {
  description = "(Required) Server network ID"
  type        = string
}

variable "ip_address" {
  description = "(Required) Server IPv4 address"
  type        = string
}

variable "labels" {
  description = "(Optional) Map of labels"
  type        = map(any)
  default     = {}
}

variable "placement_group_id" {
  description = "(Required) Placement group ID"
  type        = string
}

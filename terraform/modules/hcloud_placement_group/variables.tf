variable "name" {
  description = "(Required) Name of this placement group"
  type        = string
}

variable "type" {
  description = "(Optional) Type of this placement group"
  type        = string
  default     = "spread"
}

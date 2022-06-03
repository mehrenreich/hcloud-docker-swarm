variable "name" {
  description = "(Optional) Name of this network"
  type        = string
  default     = "network"
}

variable "ip_range" {
  description = "(Optional) Network CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnets" {
  description = "(Optional) List of subnets. At least one is needed"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "network_zone" {
  description = "(Optional) Network zone"
  type        = string
  default     = "eu-central"
}

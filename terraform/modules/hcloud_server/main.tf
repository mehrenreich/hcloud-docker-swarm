terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.2"
    }
  }
}

locals {
  default-labels = {
    type     = var.type
    name     = var.name
    image    = var.image
    location = var.location
  }
}

resource "hcloud_server" "server" {
  name               = var.name
  server_type        = var.type
  image              = var.image
  location           = var.location
  placement_group_id = var.placement_group_id

  network {
    network_id = var.network_id
    ip         = var.ip_address
  }

  labels = merge(local.default-labels, var.labels)
}

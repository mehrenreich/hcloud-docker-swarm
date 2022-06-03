terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.2"
    }
  }
}

resource "hcloud_placement_group" "placement_group" {
  name = var.name
  type = var.type
}

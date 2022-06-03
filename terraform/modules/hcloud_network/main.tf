terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.2"
    }
  }
}

resource "hcloud_network" "network" {
  name     = var.name
  ip_range = var.ip_range
}

resource "hcloud_network_subnet" "network-subnet" {
  for_each     = toset(var.subnets)
  type         = "cloud"
  network_id   = hcloud_network.network.id
  network_zone = var.network_zone
  ip_range     = each.value
}

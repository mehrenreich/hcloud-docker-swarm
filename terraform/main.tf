terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.2"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

module "docker_swarm" {
  source            = "./modules/docker_swarm"
  cluster_name      = var.cluster_name
  num_manager_nodes = var.num_manager_nodes
  num_worker_nodes  = var.num_worker_nodes
}

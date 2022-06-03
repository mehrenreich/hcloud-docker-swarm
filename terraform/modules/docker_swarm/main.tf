# Create network and 2 subnets
module "network" {
  source   = "../hcloud_network"
  name     = "docker-swarm"
  ip_range = "10.0.0.0/16"
  subnets  = ["10.0.10.0/24", "10.0.20.0/24"]
}

# Create 2 placement groups
module "placement_group" {
  for_each = toset(["manager", "worker"])
  source   = "../hcloud_placement_group"
  name     = format("docker-swarm-%s", each.value)
}

# Create management nodes
module "management_node" {
  count              = var.num_manager_nodes
  source             = "../hcloud_server"
  name               = format("docker-swarm-manager-%s", count.index + 1)
  network_id         = module.network.network_id
  ip_address         = format("10.0.10.%d", count.index + 1)
  labels             = { node-type = "manager" }
  placement_group_id = module.placement_group["manager"].placement_group_id
}

# Create worker nodes
module "worker_node" {
  count              = var.num_worker_nodes
  source             = "../hcloud_server"
  name               = format("docker-swarm-worker-%s", count.index + 1)
  network_id         = module.network.network_id
  ip_address         = format("10.0.20.%d", count.index + 1)
  labels             = { node-type = "worker" }
  placement_group_id = module.placement_group["worker"].placement_group_id
}

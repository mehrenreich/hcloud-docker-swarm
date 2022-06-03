# hcloud-docker

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.33.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_docker_swarm"></a> [docker\_swarm](#module\_docker\_swarm) | ./modules/docker_swarm | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | (Optional) Name if this cluster | `string` | `"docker-swarm-cluster"` | no |
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | (Required) API token | `string` | n/a | yes |
| <a name="input_num_manager_nodes"></a> [num\_manager\_nodes](#input\_num\_manager\_nodes) | (Required) Number of 'manager' nodes | `number` | n/a | yes |
| <a name="input_num_worker_nodes"></a> [num\_worker\_nodes](#input\_num\_worker\_nodes) | (Required) Number of 'worker' nodes | `number` | n/a | yes |

## Outputs

No outputs.
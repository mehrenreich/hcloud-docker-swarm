# hcloud-docker-swarm

Set of files to maintain a Docker Swarm cluster based on Hetzner Cloud Servers.

This is mainly a playground for me.

## Usage

### Hetzner Cloud

First, create a project in Hetzner Cloud Console and generate an API token. Store it in a safe place.

### Terraform

After installing Terraform, execute something like this:

```sh
cd terraform
terraform init
terraform apply -var=cluster-name="my-swarm-cluster" \
    -var=hcloud_token="<TOKEN FROM PREVIOUS STEP>" \
    -var=num_manager_nodes=3 -var=num_worker_nodes=3
```

### Ansible

```sh
cd ansible
./run.sh # <-- wrapper for `ansible-playbook`, which collects the vars from Terraform beforehand
```
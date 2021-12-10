# @Author: yourName
# @Date:   2021-12-09 18:48:55
# @Last Modified by:   kirankbee
# @Last Modified time: 2021-12-09 18:49:04
cat << EOF > hub.tf

module "hub-primary" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/hub"

  project_id       = data.google_client_config.current.project
  cluster_name     = module.primary-cluster.name
  location         = module.primary-cluster.location
  cluster_endpoint = module.primary-cluster.endpoint
  gke_hub_membership_name = "primary"
  gke_hub_sa_name = "primary"
}

module "hub-secondary" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/hub"

  project_id       = data.google_client_config.current.project
  cluster_name     = module.secondary-cluster.name
  location         = module.secondary-cluster.location
  cluster_endpoint = module.secondary-cluster.endpoint
  gke_hub_membership_name = "secondary"
  gke_hub_sa_name = "secondary"
}
EOF
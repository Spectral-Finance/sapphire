# @Author: yourName
# @Date:   2021-12-09 18:00:55
# @Last Modified by:   kirankbee
# @Last Modified time: 2021-12-09 18:02:05
cat << EOF > main.tf
provider "google" {
  project = var.project_id
  region  = var.primary_region
}

data "google_client_config" "current" {}

data "google_project" "project" {
  project_id = var.project_id
}

output "project" {
  value = data.google_client_config.current.project
}
EOF
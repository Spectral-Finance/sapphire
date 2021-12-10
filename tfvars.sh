# @Author: yourName
# @Date:   2021-12-09 18:01:50
# @Last Modified by:   kirankbee
# @Last Modified time: 2021-12-09 18:02:00
cat << EOF > terraform.tfvars
primary_region      = "us-central1"
primary_zones      = ["us-central1-a"]
secondary_region      = "us-west1"
secondary_zones      = ["us-west1-b"]
EOF
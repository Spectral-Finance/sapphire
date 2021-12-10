# @Author: yourName
# @Date:   2021-12-09 18:02:32
# @Last Modified by:   kirankbee
# @Last Modified time: 2021-12-09 18:02:41
cat << EOF > variables.tf
variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "primary_region" {
  description = "The primary region to be used"
}
variable "primary_zones" {
  description = "The primary zones to be used"
}

variable "secondary_region" {
  description = "The secondary region to be used"
}
variable "secondary_zones" {
  description = "The secondary zones to be used"
}
EOF
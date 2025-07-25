variable "cluster_name" {}
variable "node_group_name" {}
variable "node_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
variable "instance_type" {
  default = "t3.medium"
}
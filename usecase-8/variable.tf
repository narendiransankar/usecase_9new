variable "ecr_repo_name" {
    type = list(string)
    description = "ECR Repo name list"
}

variable "alb_sg_name" {
    type = string
}

variable "sg_name" {
    type = string
}

variable "vpc_id" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "public_cidr" {
    type = list(string)
}

variable "private_cidr" {
    type = list(string)
}
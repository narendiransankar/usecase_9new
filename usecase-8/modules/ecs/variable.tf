variable "cluster_name" {
    type = string
}

variable "execution_role_arn" {
    type = string
}

variable "subnets" {
    type = list(string)
}

variable "security_groups" {
    type = list(string)
}

variable "services" {
    type = map(object({
        image = string
        cpu = string
        memory = string
        container_port = string
        target_group_arn = string
    }))
}
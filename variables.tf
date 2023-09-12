# Common Variables
variable "region" {
    description = "default region for resources"
    type = string  
}

variable "tags" {
    description = "Tags for resources"
    type = map(string)
}

variable "project" {
    description = "Project Name"
    type = string
}



# Security Group Variables
variable "tier-name"{
    description = "Name of the Security Group"
    type = string
}

variable "allowed_inbound_traffic" {
  description = "Allowed Inbound Traffic for the Web Tier"
  type = map(object({
    from_port   = number
    to_port     = number
    protocol    = string
    description = string
    cidr_blocks = list(string)
    source_security_group_id = list(string)
  }))
}

variable "vpc_id" {
    description = "VPC ID"
    type        = string
}
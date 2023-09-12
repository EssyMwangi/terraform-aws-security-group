output "sg_id" {
    description = "The ID of the Security Group"
    value = aws_security_group.security_group.id
}

output "sg_name"{
    description = "The Name of the Security Group"
    value = aws_security_group.security_group.name
}

output "sg_description"{
    description = "The Description of the Security Group"
    value = aws_security_group.security_group.description
}
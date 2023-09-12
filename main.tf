# security groups
resource "aws_security_group" "security_group" {
    name = "${var.region}-${var.project}-${var.tier-name}"
    description = "Security Group for the ${var.tier-name}"
    vpc_id = var.vpc_id

    egress {
        from_port   = 0
        to_port = 0
        protocol    = "-1" # all protocols
        cidr_blocks = ["0.0.0.0/0"]
    }

    dynamic "ingress"{
    for_each = var.allowed_inbound_traffic

      content {
      from_port       = ingress.value["from_port"]
      to_port         = ingress.value["to_port"]
      protocol        = ingress.value["protocol"]
      cidr_blocks     = ingress.value["cidr_blocks"]
      description     = ingress.value["description"]
      security_groups = ingress.value["source_security_group_id"]
      
      }
    }
    
    tags = merge(
        var.tags,
        {
            Name = "${var.region}-${var.project}-${var.tier-name}"
        }
    )
}


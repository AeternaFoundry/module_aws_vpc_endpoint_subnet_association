output "vpc_endpoint_subnet_associations_id" {
  description = "Map of id values across all vpc_endpoint_subnet_associations, keyed the same as var.vpc_endpoint_subnet_associations"
  value       = { for k, v in aws_vpc_endpoint_subnet_association.vpc_endpoint_subnet_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_endpoint_subnet_associations_region" {
  description = "Map of region values across all vpc_endpoint_subnet_associations, keyed the same as var.vpc_endpoint_subnet_associations"
  value       = { for k, v in aws_vpc_endpoint_subnet_association.vpc_endpoint_subnet_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_endpoint_subnet_associations_subnet_id" {
  description = "Map of subnet_id values across all vpc_endpoint_subnet_associations, keyed the same as var.vpc_endpoint_subnet_associations"
  value       = { for k, v in aws_vpc_endpoint_subnet_association.vpc_endpoint_subnet_associations : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "vpc_endpoint_subnet_associations_vpc_endpoint_id" {
  description = "Map of vpc_endpoint_id values across all vpc_endpoint_subnet_associations, keyed the same as var.vpc_endpoint_subnet_associations"
  value       = { for k, v in aws_vpc_endpoint_subnet_association.vpc_endpoint_subnet_associations : k => v.vpc_endpoint_id if v.vpc_endpoint_id != null && length(v.vpc_endpoint_id) > 0 }
}


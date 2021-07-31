output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "The domain name of the load balancer"
}
output "subnets" {
  value       = data.aws_subnet_ids.default.ids
  description = " subnets used "
}

# output "subnet_ip_range" {
#   value       = data.aws_subnet_ids.default.
#   description = "Ip ranges of the subnets used "
# }
output "asg_name" {
  value       = aws_autoscaling_group.example.name
  description = "The name of the Auto Scaling Group"
}


#You can access module output variables using the following syntax:
#module.<MODULE_NAME>.<OUTPUT_NAME>
output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "The ID of the Security Group attached to the load balancer"
}
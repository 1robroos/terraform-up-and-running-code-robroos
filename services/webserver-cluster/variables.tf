variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "terraform-example-instance"
}


variable "ssh_port" {
  description = "The port the server will use for ssh logins"
  type        = number
  default     = 22
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}
variable "global_remote_state_bucket" {
  description = "The name of the S3 bucket for the global remote state"
  type        = string
}

variable "global_remote_state_key" {
  description = "The path for the global remote state in S3"
  type        = string
}
variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}
variable "iam_profile" {
  description = "The iam profile to use for the EC2 instances"
  type        = string
}
variable "iam_role" {
  description = "The iam role to use for the EC2 instance profile"
  type        = string
}
/**
 * Required Variables.
 */

variable "project" {
  description = "Name of project"
}

variable "environment" {
  description = "Name of environment (i.e. dev, test, prod)"
}

// Auto Scaling Group

variable "name" {
  description = "The name of the Auto Scaling Group"
}

// Launch Configuration

variable "ami" {
  description = "The EC2 image ID to launch."
}

// VPC

variable "vpc_id" {
  description = "VPC ID."
}

variable "alb_target_port" {
  description = "Service port on the EC2 that will be exposed using the Application Load Balancer"
}

variable "alb_certificate_arn" {
  description = "IAM certificate ARN used on the Application Load Balancer listener"
}

/**
 * Optional Variables.
 */

variable "vpc_security_groups" {
  type        = "list"
  description = "A list of associated security group IDS."
  default     = []
}

variable "vpc_availability_zones" {
  type        = "list"
  description = "A list of AZs to launch resources in. Required only if you do not specify any vpc_public_subnets."
  default     = []
}

variable "vpc_subnets" {
  type        = "list"
  description = "A list of subnet IDs to launch resources in."
  default     = []
}

variable "load_balancers" {
  type        = "list"
  description = "A list of elastic load balancer names to add to the autoscaling group names."
  default     = []
}

variable "target_group_arns" {
  type        = "list"
  description = "A list of aws_alb_target_group ARNs, for use with Application Load Balancing."
  default     = []
}

variable "instance_type" {
  description = "The size of instance to launch."
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name that should be used for the instance."
  default     = ""
}

variable "associate_public_ip_address" {
  description = "Associate a public ip address with an instance in a VPC."
  default     = false
}

variable "user_data" {
  description = "The user data to provide when launching the instance."
  default     = false
}

variable "health_check_type" {
  description = "Controls how health checking is done."
  default     = "ELB"
}

variable "max_size" {
  default = 5
}

variable "min_size" {
  default = 2
}

variable "wait_for_elb_capacity" {
  default = 2
}

variable "desired_capacity" {
  default = 2
}

variable "health_check_grace_period" {
  description = "Time after instance comes into service before checking health."
  default     = 300
}

variable "ec2_maintenance_ports" {
  type    = "list"
  default = []
}
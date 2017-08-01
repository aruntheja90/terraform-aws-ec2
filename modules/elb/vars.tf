/**
 * Required Variables.
 */

variable "project" {
  description = "Name of project"
}

variable "environment" {
  description = "Name of environment (i.e. dev, test, prod)"
}

variable "name" {
  description = "The service name"
}

variable "vpc_id" {
  description = "VPC ID."
}

variable "vpc_subnets" {
  type        = "list"
  description = "A list of subnet IDs to launch resources in."
}

/**
 * Options.
 */

variable "instance_port" {
  description = "The port on which the load balancer is listening"
  default     = "80"
}

variable "instance_protocol" {
  description = "The protocol to use to the instance. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "HTTP"
}

variable "lb_port" {
  description = "The port to listen on for the load balancer"
  default     = "80"
}

variable "lb_protocol" {
  description = "The protocol to listen on. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "HTTP"
}

variable "health_check_healthy_threshold" {
  description = "The number of checks before the instance is declared healthy."
  default = "2"
}

variable "health_check_unhealthy_threshold" {
  description = "The number of checks before the instance is declared unhealthy."
  default = "5"
}

variable "health_check_timeout" {
  description = "The length of time before the check times out."
  default = "10"
}

variable "health_check_interval" {
  description = "The interval between checks"
  default = "10"
}

variable "health_check_target" {
  description = "The target of the check. Valid pattern is #{PROTOCOL}:#{PORT}#{PATH}, where PROTOCOL values are HTTP, HTTPS - PORT and PATH are required, TCP, SSL - PORT is required, PATH is not supported"
  default = "HTTP:80/health"
}

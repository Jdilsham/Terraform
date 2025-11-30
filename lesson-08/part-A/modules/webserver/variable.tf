variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the subnet"
}

variable "ami" {
  type        = string
  description = "AMI ID for the webserver instance"

}

variable "instance_type" {
  type        = string
  description = "Instance type for the webserver instance"
}

variable "webserver_name" {
  type        = string
  description = "Webserver Name"
}
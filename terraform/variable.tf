  
variable "region" {
  description = "AWS region"
  default = "us-west-2"
}

variable "namespace" {
  description = "Unique name to use for DNS and resource naming"
}

variable "access_key" {
    description = "AWS access key"
}

variable "secret_key" {
    description = "AWS secret key"
  
variable "vpc_cidr_block" {
    description = "AWS VPC CIDR Block to use"
    default = "10.0.0.0/16"
}

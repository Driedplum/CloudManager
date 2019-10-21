terraform {
  required_version = ">= 0.10.3"
}

provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  version = "~> 3.0"
}

#------------------------------------------------------------------------------
# network
#------------------------------------------------------------------------------
module "network" {
  source    = "network/"
  namespace = "${var.namespace}"
}

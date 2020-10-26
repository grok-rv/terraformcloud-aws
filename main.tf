######################
#variables
######################

variable "aws_access_key" {}
variable "aws_secret_key" {}
#variable "key_name" {}
#variable "private_key_path" {}
variable "region" {
  default = "us-east-1"
}


##############
#providers####
##############

provider "aws" {
  version    = "~> 3.0"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

#########################
####### resources########
#########################

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
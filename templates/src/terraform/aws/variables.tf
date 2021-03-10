##
## Input Variables
##
variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_ssh_public_key" {
  default = ""
}
variable "aws_region" {
  default = "us-east-1"
}
variable "aws_availability_zone" {
  default = "us-east-1e"
}
variable "aws_emr_version" {
  default = "SUBST_EMR_VERSION"
}
variable "aws_core_instance_count" {
  default = "2"
}
variable "aws_instance_type" {
  default = "m5.xlarge"
}
variable "sw_version" {
  default = "SUBST_SW_VERSION"
}
variable "jupyter_name" {
  default = "admin"
}

#the block below added by Song
variable "aws_vpc_id" {
  
}

variable "aws_subnet_id" {
  
}
#end block - Song
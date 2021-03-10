##
## Input Variables
##
variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCMjTfWuib6GKLx0oLgu60kQQu9BBHvhQdJuwePpuDmTGbdgstfjCA8RPp85bU1d9E5bTaeAKHeB3UcqOXvtTk3AhawoXbf6Z510ggazw4LRTnfYvzX42cJ5DW1hBFEvC4YjZlx3TJ0erSiVwzatiL6AiTDmm+HG7KJjnaF2IhMQM+kIM+aCRs7HW+87FFid/UXBO4nrctxKNgKmXOLPFU7nZdqsm8AvrTvdKo0OiHnUx9OpU+Me9eEbmxox4If1TUUqNbVw5XOXj0HVrTPKn0NLtuScDUfWeTfAsiT7SQFR18qNfUmQ/7NX6Ian5Sme+shMfHH072ON3fNZLFNKWFz"
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
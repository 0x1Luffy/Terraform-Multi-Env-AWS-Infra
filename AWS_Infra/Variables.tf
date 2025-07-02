variable "env_name" {
  description = "Reuseable infra Variables"
  type = string
}

variable "ami_id" {
  description = "Reuseable AMI ID"
  type = string
}

variable "ec2_instance" {
  description = "Reuseable EC2 Instance description"
  type = string
}

variable "instance_count" {
  description = "Reuseable Number of EC2 Machine Count"
  type = number
}
variable "environment" {
  default = "dev"
}

variable "ubuntu_account_number" {
  type    = string
  default = "099720109477"
  description = "Owner ID of Ubuntu AWS AMI"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "t2.micro is Free tier Eligible Instance Type"
}

variable "key_name" {
  type        = string
  description = "EC2 KeyPair Name that EC2 Instance using"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID that EC2 Instance running on"
}

variable "security_group_ids" {
  type = list(string)
  description = "List of Security Group IDs attach to the EC2 Instance"
}

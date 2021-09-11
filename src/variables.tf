variable "environment" {
  default = "dev"
}

variable "ubuntu_account_number" {
  type    = string
  default = "099720109477"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "t2.micro is Free tier Eligible Instance Type"
}

variable "key_name" {
  type        = string
  description = "EC2 KeyPair Name"
}

variable "subnet_id" {
  type = string
}

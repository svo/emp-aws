variable "aws_region" {
  description = "The AWS region"
  default = "ap-southeast-2"
}

variable "key_name" {
  description = "The Key Pair"
}

variable "aws_amis" {
  default = {
    "ap-southeast-2" = "ami-04a04466"
  }
}

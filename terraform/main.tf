provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "emp" {
  instance_type = "t2.small"
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  key_name = "${var.key_name}"

  count = 1
}

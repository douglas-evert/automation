
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

resource "aws_instance" "red_hat" {
  ami = "${var.instance_ami}"
  instance_type = t2.micro

  tags {
    name = "red_hat"

  }
}

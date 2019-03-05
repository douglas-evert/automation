resource "aws_instance" "red_hat" {
  ami = "${var.instance_ami}"
  instance_type = t2.micro

  tags {
    name = "red_hat"

  }
}

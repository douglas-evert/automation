
resource "aws_instance" "ubuntu" {
  ami = "${var.instance_ami}"
  instance_type = "t2.micro"

  tags {
    name = "ubuntu"

  }
}

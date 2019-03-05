
module "red_hat" {
  source = "./red_hat"

  instance_ami = "ami-011b3ccf1bd6db744"
}

module "ubuntu1" {
  source = "./ubuntu"

  instance_ami = "ami-0ac019f4fcb7cb7e6"
}
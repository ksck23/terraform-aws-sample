provider "aws" {
  region     = "${var.region}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "sample" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  # Save instance IPs to a file
  provisioner "local-exec" {
    command = "echo '${aws_instance.sample.public_ip}' >> hosts.txt"
  }
}


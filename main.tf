provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.medium"

  tags = {
    Name = "Jenkins-Server"
  }
}

resource "aws_instance" "k8s_master" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.medium"

  tags = {
    Name = "K8s-Master"
  }
}

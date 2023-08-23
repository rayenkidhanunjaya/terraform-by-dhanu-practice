data "aws_vpc" "default" {
    default = true
}

data "aws_ami" "hari" {
     most_recent      = true
     owners           = ["amazon"]

    filter {
        name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"] 
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

data "aws_regions" "current" {}

data "aws_availability_zones" "available" {
    state = "available" 

    filter  {
        name = "zone-type"
        values = ["availability-zone"]
    }
}


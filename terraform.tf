terraform{
    required_version = "~>0.14"
    required_providers "~> 3.0"{
        aws = "hasichorp/aws"
    }
        }
    }
}

resource "aws_vpc" "cpq_vpc"{
    cidr_block ="10.0.0..0/16"
    region = "us-east-1"
    provider = "aws"
} 

resource "ec2_instance" "cpq_instance" {
    ami = "amiid"
    instance_type = "t2-micro"
    availibility_zone = "us-east-1a"
    count = "1"
    tags = {
        name = "instance-1"
    }
}


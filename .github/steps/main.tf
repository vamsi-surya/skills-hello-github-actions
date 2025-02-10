terrafrom {
    required_version = "~>0.14"
    required_providers = "~>3.0" {
        provider "aws"        {
            source = "hasicrop/aws"
        }
    }
}

backend {
    s3_bucket = "bucket_name"
    key = "path"
}

reosurce "aws_instance" "cpq_instance" {
    instance_type = "m5xlarge"
    avaialinility_zone = "us-east-1a"
    count = "1"
    ami = "ami-id"
    tags = {
        name = "cpagemini"
        env = "dev"
    }
}


resource "aws_iam_role" "lamba_role_exec" {
    name = "lambda_role_exec"
    
    assume_role_policy = jssonencode ({
        version = "2012-12-17"
        statement = [
            {
                Action = sts:assume:lamba_role
                Effect = "Allow"
                princinple = {
                    service =lambda.amazonaws.com
                }
            }
        ]
    })
}

resource "lambda_function" "cpq_lambda_function" {
    name = "my_lambda_function"
    handler = "lambda_Handler"
    s3_bucket = "package of zip"
    s3_key = "path"
    runtime = "pyhton 3.11"
    role = "arn"
}

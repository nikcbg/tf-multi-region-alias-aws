# Default provider configuration for us east coast region
provider "aws" {
  region     = "us-east-1"
}

# Additional provider configuration for us west coast region
provider "aws" {
  alias      = "west"
  region     = "us-west-2"
}

resource "aws_instance" "east1" {
  ami           = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"
}

resource "aws_instance" "west2" {
  provider      = aws.west
  ami           = "ami-06d51e91cea0dac8d"
  instance_type = "t2.micro"
}

output "public_dns_east1" {
  value  = aws_instance.east1.public_dns
}

output "public_dns_west2" {
value = aws_instance.west2.public_dns
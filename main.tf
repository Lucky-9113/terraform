resource "aws_instance" "terraform_instance1" {
    ami = "ami-02238ac43d6385ab3"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform"
    }
  
}


resource "aws_s3_bucket" "bucket1" {
  bucket = "mebuc9113"

  tags = {
    Name        = "My bucket1"
    Environment = "Dev"
  }
}
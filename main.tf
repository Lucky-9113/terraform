resource "aws_instance" "terraform_instance1" {
    ami = "ami-02238ac43d6385ab3"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform"
    }
  
}


resource "aws_s3_bucket" "b1" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
resource "aws_instance" "publicinstance" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"

    tags = {
      Name="public-instance"
    }
  
}
resource "aws_eip" "lb" {
  domain   = "vpc"

  tags = {
    Name ="tushar-ip"
  }
}

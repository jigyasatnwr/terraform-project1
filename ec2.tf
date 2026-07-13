# Create Key Pair
resource "aws_key_pair" "deployer" {
  key_name   = "tws-terra-key"
  public_key = file("C:/Users/DELL/.ssh/id_rsa.pub")
}

# Use the default VPC
resource "aws_default_vpc" "default" {
}

# Create Security Group
resource "aws_security_group" "twsecurity" {
  name        = "allow-ports"
  description = "Security group for EC2"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-security-group"
  }
}

# Create EC2 Instance
resource "aws_instance" "my_instance" {
  ami                    = "ami-01a00762f46d584a1" # Verify this AMI is valid for ap-south-1
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.twsecurity.id]

  tags = {
    Name = "terra-automate"
  }
}
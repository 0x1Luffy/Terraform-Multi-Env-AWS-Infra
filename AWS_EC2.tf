# EC2 
# - Key Pair 
# - Security Groups
# - VPC 


# Creating Key-Pair using ssh-keygen

resource "aws_key_pair" "my-pub-key" {
  key_name = "my_pub_key"
  public_key = file() # Location of public key
}


# Creating VPC (Default)

resource "aws_default_vpc" "default" {
  
}

# Security Group

resource "aws_security_group" "My_security_group" {
  name = "Allow Ports"
  vpc_id = aws_default_vpc.default.id #interpolation

  # Incoming traffic

    ingress {
        description = "Allowing SSH Port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ] #allowing anyone to hit my ec2 instance
    }


  # Outgoing Traffic

    egress{
        description = "Outgoing traffic from EC2"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ] # allowing My EC2 to hit any traffic 
    }
}


# Creating EC2 Instance

 resource "aws_instance" "my-ec2" {
   ami = "ami-0bfadf16f99eaa552"
   instance_type = "t2.micro"
   key_name = aws_key_pair.my-pub-key.key_name
   security_groups = [aws_security_group.My_security_group.name]
   tags = {
     name = "Created using Terraform"
   }
 }
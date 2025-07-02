# Get Public IP of Your EC2 Instance 

output "get_ec2_pub_IP" {
  value = aws_instance.my-ec2.public_ip #interpolation
}
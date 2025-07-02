resource "aws_instance" "my-ec2" {
   count = "${var.instance_count}"
   ami = var.ami_id
   instance_type = var.ec2_instance
   key_name = aws_key_pair.my-pub-key.key_name # Change accorindly
   security_groups = [aws_security_group.My_security_group.name] # change accordingly
   tags = {
     name = "${var.env_name}-EC2 Instance"
   }
 }
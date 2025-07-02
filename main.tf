## Here We will be using the templates or modules we created inside /AWS_Infra Folder



# Individual AWS Infra for Dev Envrionment
module "dev-stage" {
  source = "./AWS_Infra"
  env_name = "Dev Envrionment"
  ec2_instance = "t2.micro"
  ami_id = "ami-0bfadf16f99eaa552"
  instance_count = 1
}

# Individual AWS Infra for Staging Envrionment
module "staging" {
  source = "./AWS_Infra"
  env_name = "Staging Envrionment"
  ec2_instance = "t2.medium"
  ami_id = "ami-0bfadf16f99eaa552"
  instance_count = 2
}


# Individual AWS Infra for Production Envrionment
module "production" {
  source = "./AWS_Infra"
  env_name = "Production Envrionment"
  ec2_instance = "t2.large"
  ami_id = "ami-0bfadf16f99eaa552"
  instance_count = 4
}


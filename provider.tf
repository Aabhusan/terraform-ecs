
# provider.tf

# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  region                  = var.aws_region
}


terraform {
  required_version    = "~> 0.12.0"
  
  backend "remote" {
    organization  = "TestInc"
    workspaces {
      name        = ""
    }
  }
}
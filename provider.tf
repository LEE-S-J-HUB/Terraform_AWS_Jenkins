# Provider Information
provider "aws" {
  region = "ap-northeast-2"
}

terraform {
    backend "aws" {
            backend "s3" {
            bucket = "s3-an2-sha-dev-tf-jenkins" 
            key    = "jenkins_temp/terraform.tfstate"
            region = "ap-northeast-2"
            encrypt = true
        }
    }
}
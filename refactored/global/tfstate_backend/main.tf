terraform {
  # Backend where the tfstate file will be saved

  backend "s3" {
    bucket = "terraform-aws-vprofile"
    key    = "tfstate-backend/terraform.tfstate"
    region = "ap-southeast-1"

    dynamodb_table = "terraform-state-locks2"
    encrypt        = true
  }
}



module "tfstate_backend" {
  source = "./module"
}
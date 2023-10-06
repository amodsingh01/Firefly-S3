module "terraform-aws-s3-bucket" {
  source = "github.com/mineiros-io/terraform-aws-s3-bucket"

}
terraform {
  backend "s3" {
    bucket = "834277767436-tf-state"
    key    = "ecr.tfstate"
    region = "us-east-1"
  }
}

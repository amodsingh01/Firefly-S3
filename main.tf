provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket_name = var.bucket_name
}

output "bucket_name" {
  value = module.s3_bucket.bucket_name
}
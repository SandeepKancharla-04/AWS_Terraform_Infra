provider "aws" {
  region = var.aws_region

  # Force offline plan: never try IMDS or real creds
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
}

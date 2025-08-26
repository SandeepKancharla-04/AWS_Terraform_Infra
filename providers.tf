provider "aws" {
  region = var.aws_region

  # Allow terraform plan to run in CI without real AWS creds
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
}

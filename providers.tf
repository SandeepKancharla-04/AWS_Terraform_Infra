provider "aws" {
  region = var.aws_region

  # Provide static dummy credentials so the AWS SDK never falls back to IMDS
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  # Make plan work without real AWS: skip validations and metadata/account calls
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
}

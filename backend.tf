# Uncomment and fill when you’re ready for remote state.
# terraform {
#   backend "s3" {
#     bucket         = "YOUR-STATE-BUCKET"
#     key            = "terraform/state/terraform-aws-infrastructure.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }

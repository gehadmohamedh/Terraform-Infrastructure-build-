terraform {
  backend "s3" {
    bucket = "terraform-gehad-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-backend"
  }
}

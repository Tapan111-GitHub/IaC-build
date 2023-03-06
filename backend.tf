terraform {
  backend "s3" {
    bucket = "tsstatefilestf"
    key    = "tapan-infra.tfstate"
    region = "us-east-1"
  }
}

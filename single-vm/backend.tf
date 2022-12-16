terraform {
  backend "gcs" {
    bucket = "aritran-terraform-state"
    path   = "gcp/terraform.tfstate"
  }
}

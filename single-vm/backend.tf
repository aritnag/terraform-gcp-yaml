terraform {
  backend "gcs" {
    bucket = "aritranagnordcloud-terraform-state"
    path   = "gcp/terraform.tfstate"
  }
}

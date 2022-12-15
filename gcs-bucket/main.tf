resource "google_storage_bucket" "aritranagnordcloud-terraform-state" {
  name          = "aritranagnordcloud-terraform-state"
  location      = "${var.location}"
  force_destroy = true
}

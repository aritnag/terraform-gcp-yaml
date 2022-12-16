resource "google_storage_bucket" "aritran-terraform-state" {
  name          = "aritran-terraform-state"
  location      = "${var.location}"
  force_destroy = true
}

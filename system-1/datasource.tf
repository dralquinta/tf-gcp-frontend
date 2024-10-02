# Get the latest Debian image from GCP
data "google_compute_image" "debian" {
  family  = "debian-11"
  project = "debian-cloud"
}

terraform {
  backend "gcs" {
    bucket = "dralquinta-tf-states"
    prefix = "terraform/system-1"
  }
}

# Module to create a GCE instance (Referenced from a GitHub repo)
module "gce_instance" {
  source = "git::https://github.com/dralquinta/tf-gcp-compute.git?ref=main" # Replace with the correct URL
  instance_name = var.instance_name
  machine_type  = var.machine_type
  zone          = var.zone
  network      = var.network
  subnet       = var.subnet
}

# Module to create and attach disk (Referenced from a GitHub repo, can be used later)
module "gce_disk" {
  source = "git::https://github.com/dralquinta/tf-gcp-disk.git?ref==1-enter-logic-to-format-disks-attached-to-machine" # Replace with the correct URL
  depends_on = [ module.gce_instance ]
  disk_name    = var.disk_name
  disk_size_gb = var.disk_size_gb
  zone         = var.zone
  instance     = module.gce_instance.instance_self_link
}

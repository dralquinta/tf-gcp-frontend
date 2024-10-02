# Output the instance's external IP
output "instance_ip" {
  value = module.gce_instance.instance_external_ip
}

# Output the self-link of the attached disk (once the disk is attached)
output "disk_self_link" {
  value = module.gce_disk.disk_self_link
}

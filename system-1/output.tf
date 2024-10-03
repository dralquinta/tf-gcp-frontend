# Output the instance's external IP
output "instance_ip" {
  value = module.gce_instance.instance_external_ip
}

output "mount_command" {
  value = module.gce_disk.disk_mount_command
}

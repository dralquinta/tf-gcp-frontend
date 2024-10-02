# Output the instance's external IP
output "instance_ip" {
  value = module.gce_instance.instance_external_ip
}

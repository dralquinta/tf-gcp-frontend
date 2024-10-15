# Output the self-links of the created instances
output "instance_self_links" {
  description = "Self-links of all created instances"
  value       = module.gce_instance[*].instance_self_link  # Output for all instances
}

# Output the disk names for all instances
output "disk_names" {
  description = "Names of all created disks"
  value       = module.gce_disk[*].disk_name  # Output for all disks
}

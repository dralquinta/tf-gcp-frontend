variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone for the instance"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "Name of the GCE instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the GCE instance"
  type        = string
  default     = "n1-standard-1"
}

variable "disk_name" {
  description = "Name of the additional disk"
  type        = string
}

variable "disk_size_gb" {
  description = "Size of the additional disk in GB"
  type        = number
  default     = 100
}

variable "network" {
  description = "Name of the VPC"
  type = string  
}

variable "subnet" {
  description = "Name of the subnet"
  type = string
}

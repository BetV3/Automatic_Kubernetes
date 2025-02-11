variable "vm_name" {
  description = "Name for the VM"
  type        = string
}
variable "worker_count" {
  description = "Number of worker nodes"
  type        = number
  
}
variable "cpu" {
  description = "Number of CPUs for the VM"
  type        = number
  default     = 4
}

variable "memory" {
  description = "Memory for the VM in MB"
  type        = number
  default     = 8192
}

variable "disk_size" {
  description = "Disk size for the VM in GB"
  type        = number
  default     = 50
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

variable "vsphere_server" {
  type = string
}

variable "datacenter" {
  type = string
}

variable "cluster" {
  type = string
}

variable "datastore" {
  type = string
}

variable "network" {
  type = string
}

variable "content_library_name" {
  description = "Name of the Content Library"
  type        = string
}

variable "ova_template_name" {
  description = "Name of the OVA template in the Content Library"
  type        = string
}

variable "vm_name" {}
variable "cpu" {
  type = number
  default = 2
}
variable "memory" {
  type = number
  default = 4096
}
variable "disk_size" {
  type = number
  default = 20
}
variable "guest_id" {
  type = string
  default = "ubuntu64Guest"
}
variable "network_adapter_type" {
  type = string
  default = "vmxnet3"
}
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

variable "datacenter" {}
variable "cluster" {}
variable "datastore" {}
variable "network" {}
variable "template_uuid" {
  description = "UUID value of the template in the Content Library"
  type = string
}

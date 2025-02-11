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
variable "content_library" {
  description = "Name of the Content Library"
  type        = string
}
variable "template" {
  description = "Name of the OVA template in the Content Library"
  type        = string
}

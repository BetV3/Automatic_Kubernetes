output "vm_id" {
  value = vsphere_virtual_machine.node.id
}
output "vm_ip" {
  value = vsphere_virtual_machine.node.default_ip_address
}
data "vsphere_content_library" "lib" {
  name = var.content_library_name
}
data "vsphere_content_library_item" "ova_template" {
  name = var.ova_template_name
  type = "ovf"
  library_id = data.vsphere_content_library.lib.id
}
module "master_node" {
  source = "../../modules/vm"
  count = var.worker_count
  vm_name = "${var.vm_name}-${count.index}"
  cpu = var.cpu
  memory = var.memory
  disk_size = var.disk_size

  vsphere_user = var.vsphere_user
  vsphere_password = var.vsphere_password
  vsphere_server = var.vsphere_server

  datacenter = var.datacenter
  cluster = var.cluster
  datastore = var.datastore
  network = var.network

  template_uuid = data.vsphere_content_library_item.ova_template.id
}
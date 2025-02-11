data "vsphere_datacenter" "dc" {
  name = var.datacenter
}
data "vsphere_datastore" "ds" {
  name = var.datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_compute_cluster" "cluster" {
  name = var.cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network" {
  name = var.network
  datacenter_id = data.vsphere_datacenter.dc.id
}
resource "vsphere_virtual_machine" "vm" {
    name             = var.vm_name
    resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
    datastore_id     = data.vsphere_datastore.ds.id 

    num_cpus         = var.cpu
    memory           = var.memory
    guest_id         = "ubuntu64Guest"

    network_interface {
        network_id   = data.vsphere_network.network.id
        adapter_type = "vmxnet3"
    }

    disk {
        label = "disk0"
        size  = var.disk_size
        thin_provisioned = true
    }

    clone {
        template_uuid = var.template_uuid
    }
}
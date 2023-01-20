# output ip for each instance
output "ip" {
  value = google_compute_instance.vm_instance[*].network_interface.0.network_ip
}

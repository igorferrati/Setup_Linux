output "public_ip_address" {
  value = oci_core_instance.instance.public_ip
}

output "private_ip_address" {
  value = oci_core_instance.instance.private_ip
}
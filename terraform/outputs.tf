output "address" {
  value = "\nid: ${element(aws_instance.emp.*.id, 0)}\nip: ${element(aws_instance.emp.*.public_ip, 0)}"
}

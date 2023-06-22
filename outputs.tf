output "ec2_global_ips" {
  value = ["${aws_instance.vm_ubuntu.*.public_ip}"]
}
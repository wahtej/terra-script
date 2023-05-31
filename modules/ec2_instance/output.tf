output "k8s_master" {
  value = aws_instance.k8s_master.public_ip
}

output "k8s_node1" {
  value = aws_instance.k8s_node1.public_ip
}


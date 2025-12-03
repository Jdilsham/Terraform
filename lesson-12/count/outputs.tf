output "public_ips" {
  description = "Public ip addresses of all instances"
  value       = aws_instance.count_lab[*].public_ip
}
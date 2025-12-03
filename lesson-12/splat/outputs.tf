output "ebs_block_device" {
  description = "block device volumes IDs"
  value       = aws_instance.splat_lab.ebs_block_device[*].volume_id
}
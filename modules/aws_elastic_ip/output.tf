output "allocation_id" {
  value = aws_eip.this.id
}

output "public_ip" {
  value = aws_eip.this.public_ip
}

resource "aws_ebs_volume" "this" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.type
  iops              = var.iops
  throughput        = var.throughput
  encrypted         = var.encrypted
  kms_key_id        = var.kms_key_id
  tags              = var.tags
}

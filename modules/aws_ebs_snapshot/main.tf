resource "aws_ebs_snapshot" "this" {
  volume_id   = var.volume_id
  description = var.description
  tags        = var.tags
}

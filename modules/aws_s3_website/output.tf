output "website_endpoint" {
  value = "http://${var.bucket}.s3-website-${data.aws_region.current.name}.amazonaws.com"
}

data "aws_region" "current" {}

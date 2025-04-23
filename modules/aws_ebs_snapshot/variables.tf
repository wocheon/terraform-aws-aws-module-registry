variable "volume_id" {
  description = "The ID of the EBS volume to snapshot"
  type        = string
}

variable "description" {
  description = "A description for the snapshot"
  type        = string
  default     = "Snapshot created by Terraform"
}

variable "tags" {
  description = "Tags to assign to the snapshot"
  type        = map(string)
  default     = {}
}

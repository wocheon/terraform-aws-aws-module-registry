variable "availability_zone" {
  description = "The AZ where the EBS volume will be created"
  type        = string
}

variable "size" {
  description = "The size of the drive in GiBs"
  type        = number
}

variable "type" {
  description = "The type of EBS volume"
  type        = string
  default     = "gp3"
}

variable "iops" {
  description = "The amount of provisioned IOPS"
  type        = number
  default     = null
}

variable "throughput" {
  description = "The throughput to provision in MiB/s (only for gp3)"
  type        = number
  default     = null
}

variable "encrypted" {
  description = "Whether the volume should be encrypted"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The full ARN of the KMS key to use when encrypting the volume"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to assign to the volume"
  type        = map(string)
  default     = {}
}

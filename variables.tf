variable "cluster_name" {
  description = "EKS Cluster Name"
  default     = "demo_sabry-cluster"
}

variable "key_name" {
  description = "SSH key for worker nodes"
  default     = "my-key"
}
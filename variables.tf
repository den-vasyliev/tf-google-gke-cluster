variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  default     = "us-central1-c"
  description = "GCP region to use"
}

variable "GKE_MACHINE_TYPE" {
  type        = string
  default     = "g1-small"
  description = "Machine type"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 2
  description = "GKE nodes number"
}

variable "GKE_CLUSTER_NAME" {
  type        = string
  default     = "main"
  description = "GKE cluster name"
}

variable "GKE_POOL_NAME" {
  type        = string
  default     = "main"
  description = "GKE pool name"
}

variable "ENABLE_COST_OPTIMIZATION" {
  type        = bool
  default     = true
  description = "Enable cost optimization features"
}

variable "COST_OPTIMIZED_MACHINE_TYPE" {
  type        = string
  default     = "e2-small"
  description = "Machine type for cost-optimized nodes"
}

variable "SPOT_MACHINE_TYPE" {
  type        = string
  default     = "e2-micro"
  description = "Machine type for spot instances"
}

variable "MIN_COST_NODES" {
  type        = number
  default     = 1
  description = "Minimum number of cost-optimized nodes"
}

variable "MAX_COST_NODES" {
  type        = number
  default     = 5
  description = "Maximum number of cost-optimized nodes"
}

variable "ADDITIONAL_NODES" {
  type        = number
  default     = 2
  description = "Number of additional nodes to add"
}

variable "ENABLE_AUTOSCALING" {
  type        = bool
  default     = true
  description = "Enable autoscaling for node pools"
}

variable "MAX_NODES" {
  type        = number
  default     = 5
  description = "Maximum number of nodes when autoscaling"
}

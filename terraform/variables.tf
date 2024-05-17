variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "Subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "container_name" {
  description = "ECS container name"
  type        = string
  default     = "hello-world"
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
  default     = "your_account_id.dkr.ecr.us-east-1.amazonaws.com/hello-world:latest"
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 3000
}

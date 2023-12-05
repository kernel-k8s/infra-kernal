variable "region" {
  description = "The AWS region"
  default = "ap-northeast-2"
}

variable "db_username" {
  default = "kernel"
  description = "The username for the database"
}

variable "db_password" {
  default = "Kernel1234"
  description = "The password for the database"
}

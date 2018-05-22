variable "region" {
  type = "string"
}

variable "timeout" {
  type = "string"
}

variable "s3_lambda_bucket" {
  type = "string"
}

variable "s3_function_key" {
  type = "string"
}

variable "function_name" {
  type = "string"
}

variable "description" {
  type = "string"
}

variable "handler" {
  type = "string"
}

variable "runtime" {
  type = "string"
}

variable "lambda_role_arn" {
  type = "string"
}

variable "tags" {
  type = "map"
}

variable "source_arn" {
  type = "string"
}

variable "env_vars" {
  type = "map"
}

variable "principal" {
  type = "string"
}

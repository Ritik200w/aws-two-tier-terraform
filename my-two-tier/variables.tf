variable "region" {
  type        = string
  description = "AWS region"
}

variable "project_name" {
  type        = string
  description = "Prefix for all resource names"
}

variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "instance_type" {
  type        = string
  description = "EC@ instance type"

}

variable "db_name" {
  type = string

}

variable "db_username" {
  type = string

}

variable "db_instance_class" {
  type = string

}
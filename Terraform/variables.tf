variable "resource_group" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network" {
  type = string
}

variable "address_space" {
  type = list 
}

variable "subnet1" {
  type = string
}

variable "subnet2" {
  type = string
}

variable "nsg" {
  type = string
}

variable "address_prefixes1" {
  type = list 
}

variable "address_prefixes2" {
  type = list 
}

variable "name" {
  type = string
}

variable "priority" {
  type = string
}

variable "direction" {
  type = string
}

variable "access" {
  type = string
}

variable "protocol" {
  type = string
}

variable "source_port_range" {
  type = string 
}

variable "destination_port_range" {
  type = string 
}

variable "source_address_prefix" {
  type = string 
}

variable "destination_address_prefix" {
  type = string 
}

variable "environment" {
  type = string
}
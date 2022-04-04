variable "controller_ip" {
  type = string
}
variable "username" {
  type = string
}
variable "password" {
  type = string
}

variable "account" {
  type = string
}

variable "project" {
  type = string
}

variable "storage_bucket_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpcs" {
  type = map(string)
}

variable firewall_image {
  type = string
  default = "Palo Alto Networks VM-Series Next-Generation Firewall BYOL~9.1.3"
}

variable bgp_cidrs {
  type = list(string)
  default = ["172.21.4.0/24"]
}

variable bgp_names {
  type = list(string)
  default = ["bgpolan"]
}
variable "region" {
  type    = string
  default = null
}

variable "vm_name" {
  type = string
}

variable "is_create_rg" {
  type    = bool
  default = false
}

variable "resource_group_name" {
  type    = string
  default = null
}

variable "is_create_VN" {
  type = bool
}

variable "AVN_name" {
  type = string
}

variable "AVN_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "is_create_subnet" {
  type = bool
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "nic_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "user_data_file" {
  type    = string
  default = null
}

variable "user_data" {
  type    = string
  default = null
}

variable "OS_name" {
  type = string
}

variable "OS_version" {
  type = string
}

variable "volume" {
  type    = list(number)
  default = []
}

variable "create_security_group_rules" {
  type = list(object({
    direction         = string
    protocol          = string
    port_range_min    = string
    port_range_max    = string
    remote_ip_prefix  = string
  }))
  default = []
}

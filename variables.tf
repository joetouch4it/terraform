variable "vm_name" {
  default = "joe-machine"
  type = string
  description = "vm name"
}

variable "config" {
  description = ""
  sensitive   = true
  default = {}
}
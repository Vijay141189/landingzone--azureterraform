variable "nsgs" {
  description = <<-EOT
    Map of NSGs. Har entry me:
      name, location, resource_group_name, subnet_id (null ho sakta hai agar direct associate nahi karna),
      rules = list of { name, priority, direction, access, protocol, source_port_range,
                         destination_port_range, source_address_prefix, destination_address_prefix }
  EOT
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_id           = optional(string)
    rules = map(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }))
  }))
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

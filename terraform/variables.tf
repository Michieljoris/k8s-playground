variable "name" {
  description = "Used to name various infrastructure components"
  default = ""
}

variable "vultr_api_key" {
  type = string
  default = ""
}

variable "region" {
  description = "(Required) The ID of the region that the server is to be created in."
}

# variable "plan" {
#   description = "(Required) The ID of the plan that you want the server to subscribe to. "
# }

variable "snapshot_id" {
  description =  "(Optional) The ID of the Vultr snapshot that the server will restore for the initial installation."
}

variable "os_id" {
  description =  "(Optional) The ID of the OS"
}

variable "k8s_server_plan" {
  description =  "(Optional) The plan of the instance"
}

variable "k8s_worker_plan" {
  description =  "(Optional) The plan of the instance"
}


variable "script_id" {
  description = "(Optional) The ID of the startup script you want added to the server."
  default = ""
}

variable "server_count" {
  description = "The number of servers to provision."
  default     = "3"
}

variable "client_count" {
  description = "The number of clients to provision."
  default     = "4"
}

variable "retry_join" {
  description = "Used by Consul to automatically form a cluster."
  type        = map(string)

  default = {
    provider  = "aws"
    tag_key   = "ConsulAutoJoin"
    tag_value = "auto-join"
  }
}

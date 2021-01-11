# Configure the Vultr Provider
# export TF_VAR_vultr_api_key=<api-key>
provider "vultr" {
  api_key = var.vultr_api_key
  rate_limit = 700
  retry_limit = 3
}

#https://www.terraform.io/docs/providers/vultr/r/server.html
resource "vultr_instance" "k8s_server" {
  plan = var.k8s_server_plan
  region = var.region
  os_id = var.os_id
  label = "k8s_server"
  hostname = "k8s-server"
  ssh_key_ids = ["19e844a5-ca00-4ef7-a44c-2f4475b0620c"]
 
  provisioner "local-exec" {
    command = "echo ${vultr_instance.k8s_server.main_ip} >> k8s_server_ip.txt"
  }

}

resource "vultr_instance" "k8s_worker_1" {
  plan = var.k8s_worker_plan
  region = var.region
  os_id = var.os_id
  label = "k8s_worker_1"
  hostname = "k8s-worker1"
  ssh_key_ids = ["19e844a5-ca00-4ef7-a44c-2f4475b0620c"]

  provisioner "local-exec" {
    command = "echo ${vultr_instance.k8s_worker_1.main_ip} >> k8s_worker_1_ip.txt"
  }
}

resource "vultr_instance" "k8s_worker_2" {
  plan = var.k8s_worker_plan
  region = var.region
  os_id = var.os_id
  label = "k8s_worker_2"
  hostname = "k8s-worker2"
  ssh_key_ids = ["19e844a5-ca00-4ef7-a44c-2f4475b0620c"]

  provisioner "local-exec" {
    command = "echo ${vultr_instance.k8s_worker_2.main_ip} >> k8s_worker_2_ip.txt"
  }
}


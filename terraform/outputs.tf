output "k8s_server_outputs" {
value = <<FOO

${vultr_instance.k8s_server.id} - ID of the server.k8s_server.
${vultr_instance.k8s_server.region} - The ID of the region that the server.k8s_server is in.
${vultr_instance.k8s_server.os} - The string description of the operating system installed on the server.k8s_server.
${vultr_instance.k8s_server.ram} - The amount of memory available on the server.k8s_server in MB.
${vultr_instance.k8s_server.disk} - The description of the disk(s) on the server.k8s_server.
${vultr_instance.k8s_server.main_ip} - The server.k8s_server's main IP address.
${vultr_instance.k8s_server.default_password} - The server.k8s_server's default password.
${vultr_instance.k8s_server.date_created} - The date the server.k8s_server was added to your Vultr account.
${vultr_instance.k8s_server.allowed_bandwidth} - The server.k8s_server's allowed bandwidth usage in GB.
${vultr_instance.k8s_server.netmask_v4} - The server.k8s_server's IPv4 netmask.
${vultr_instance.k8s_server.gateway_v4} - The server.k8s_server's IPv4 gateway.
${vultr_instance.k8s_server.status} - The status of the server.k8s_server's subscription.
${vultr_instance.k8s_server.power_status} - Whether the server.k8s_server is powered on or not.
${vultr_instance.k8s_server.ssh_key_ids[0]} - A list of SSH key IDs applied to the server on install.
FOO
}

output "k8s_worker_1_outputs" {
value = <<FOO

${vultr_instance.k8s_worker_1.id} - ID of the server.k8s_worker_1.
${vultr_instance.k8s_worker_1.region} - The ID of the region that the server.k8s_worker_1 is in.
${vultr_instance.k8s_worker_1.os} - The string description of the operating system installed on the server.k8s_worker_1.
${vultr_instance.k8s_worker_1.ram} - The amount of memory available on the server.k8s_worker_1 in MB.
${vultr_instance.k8s_worker_1.disk} - The description of the disk(s) on the server.k8s_worker_1.
${vultr_instance.k8s_worker_1.main_ip} - The server.k8s_worker_1's main IP address.
${vultr_instance.k8s_worker_1.default_password} - The server.k8s_worker_1's default password.
${vultr_instance.k8s_worker_1.date_created} - The date the server.k8s_worker_1 was added to your Vultr account.
${vultr_instance.k8s_worker_1.allowed_bandwidth} - The server.k8s_worker_1's allowed bandwidth usage in GB.
${vultr_instance.k8s_worker_1.netmask_v4} - The server.k8s_worker_1's IPv4 netmask.
${vultr_instance.k8s_worker_1.gateway_v4} - The server.k8s_worker_1's IPv4 gateway.
${vultr_instance.k8s_worker_1.status} - The status of the server.k8s_worker_1's subscription.
${vultr_instance.k8s_worker_1.power_status} - Whether the server.k8s_worker_1 is powered on or not.
${vultr_instance.k8s_worker_1.ssh_key_ids[0]} - A list of SSH key IDs applied to the server on install.
FOO
}


output "k8s_worker_2_outputs" {
value = <<FOO

${vultr_instance.k8s_worker_2.id} - ID of the server.k8s_worker_2.
${vultr_instance.k8s_worker_2.region} - The ID of the region that the server.k8s_worker_2 is in.
${vultr_instance.k8s_worker_2.os} - The string description of the operating system installed on the server.k8s_worker_2.
${vultr_instance.k8s_worker_2.ram} - The amount of memory available on the server.k8s_worker_2 in MB.
${vultr_instance.k8s_worker_2.disk} - The description of the disk(s) on the server.k8s_worker_2.
${vultr_instance.k8s_worker_2.main_ip} - The server.k8s_worker_2's main IP address.
${vultr_instance.k8s_worker_2.default_password} - The server.k8s_worker_2's default password.
${vultr_instance.k8s_worker_2.date_created} - The date the server.k8s_worker_2 was added to your Vultr account.
${vultr_instance.k8s_worker_2.allowed_bandwidth} - The server.k8s_worker_2's allowed bandwidth usage in GB.
${vultr_instance.k8s_worker_2.netmask_v4} - The server.k8s_worker_2's IPv4 netmask.
${vultr_instance.k8s_worker_2.gateway_v4} - The server.k8s_worker_2's IPv4 gateway.
${vultr_instance.k8s_worker_2.status} - The status of the server.k8s_worker_2's subscription.
${vultr_instance.k8s_worker_2.power_status} - Whether the server.k8s_worker_2 is powered on or not.
${vultr_instance.k8s_worker_2.ssh_key_ids[0]} - A list of SSH key IDs applied to the server on install.
FOO
}

output "ip_address" {
value = <<FOO

K8S_SERVER_IP = ${vultr_instance.k8s_server.main_ip}
K8S_WORKER1_IP = ${vultr_instance.k8s_worker_1.main_ip}
K8S_WORKER2_IP = ${vultr_instance.k8s_worker_2.main_ip}

Edit /etc/hosts:

${vultr_instance.k8s_server.main_ip} k8s.server
${vultr_instance.k8s_worker_1.main_ip} k8s.worker_1
${vultr_instance.k8s_worker_2.main_ip} k8s.worker_2
FOO
}





# output "other-server-ips" {
#   value = vultr_instance.other-servers != [] ? vultr_instance.other-servers[*].main_ip : []
# }

# ${vultr_instance.k8s-server.vps_cpu_count} - The number of virtual CPUs available on the server.k8s-server.
# ${vultr_instance.k8s-server.location} - The physical location of the server.k8s-server.

# ${vultr_instance.k8s-server.pending_charges} - Charges pending for this server.k8s-server's subscription in USD.
# ${vultr_instance.k8s-server.cost_per_month} - The server.k8s-server's cost per month in USD.

# ${vultr_instance.k8s-server.current_bandwidth} - The server.k8s-server's current bandwidth usage in GB.

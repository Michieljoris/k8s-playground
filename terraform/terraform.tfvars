# `name` (required) is used to override the default decorator for elements in
# the stack.  This allows for more than one environment per account.
#  - This name can only contain alphanumeric characters.  If it is not provided
#    here, it will be requested interactively.
name = "mystack"

# `key_name` (required) -  The name of the Vultr SSH key ids to be loaded on the
# instance at provisioning.
# If it is not provided here, it will be requested interactively.
#key_name = ""

# `nomad_binary` (optional, null) - URL of a zip file containing a nomad
# executable with which to replace the Nomad binaries in the AMI.
# `region_id` - sets the Vultr region to build your cluster in.
region = "syd"

# `plan_id` - Vultr plan id.
# plan_id = "201"
k8s_server_plan = "vc2-2c-4gb"
k8s_worker_plan = "vc2-1c-1gb"

os_id = "270"

# `snapshot_id`
# snapshot_id = "f55e549e8dbb4"
# snapshot_id = "9385e5939dedd"
snapshot_id = "6b55e6bbe4d08"

# `server_count`
server_count = 1

# `client_count`
client_count = 0

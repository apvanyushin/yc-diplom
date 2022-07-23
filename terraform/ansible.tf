resource "null_resource" "wait" {
  provisioner "local-exec" {
    command = "sleep 240"
  }

  depends_on = [
    local_file.inventory
  ]
}

resource "null_resource" "nginx" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/site.yml"
  }
  depends_on = [
    null_resource.wait
  ]
}

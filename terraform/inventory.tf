resource "local_file" "inventory" {
content = <<-DOC
# Generated by Terraform.
---
nginx:
  hosts:
    ${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no"

dbservers:
  hosts:
    db01:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
      mysql_replication_role: 'master'
          
    db02:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
      mysql_replication_role: 'slave'  

wordpress:
  hosts:
    app:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"


gitlabSrv:
  hosts:
    gitlab:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"


gitlabRunner:
  hosts:
    runner:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"


monitoringSrv:
  hosts:
    monitoring:
      ansible_connection: ssh
      ansible_user: ubuntu
      ansible_ssh_extra_args: "-o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"

DOC
  filename = "../ansible/inventory.yml"
  file_permission = "0644"

  depends_on = [yandex_compute_instance.nginx]
}

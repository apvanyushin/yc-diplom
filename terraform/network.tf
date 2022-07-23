# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_route_table" "instance-route" {
  network_id           = yandex_vpc_network.default.id
  name                 = "instance-route"
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = var.instance_ip
  }
} 


resource "yandex_vpc_subnet" "subnet_1" {
  name           = "subnet_1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.default.id
  v4_cidr_blocks = ["192.168.101.0/24"]
  route_table_id = yandex_vpc_route_table.nat-instance-route.id
}
resource "yandex_vpc_subnet" "subnet_2" {
  name           = "subnet_2"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.default.id
  v4_cidr_blocks = ["192.168.102.0/24"]
  route_table_id = yandex_vpc_route_table.nat-instance-route.id
}

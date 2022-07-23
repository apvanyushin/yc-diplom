resource "yandex_compute_instance" "nginx" {
  name                      = "nginx"
  zone                      = "ru-central1-a"
  hostname                  = "nginx.apvanyushin.ru"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"  
    nat        = true
    ip_address = var.nat_instance_ip
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "db01" {
  name                      = "db01"
  zone                      = "ru-central1-a"
  hostname                  = "db01.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}


resource "yandex_compute_instance" "db02" {
  name                      = "db02"
  zone                      = "ru-central1-b"
  hostname                  = "db02.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_2.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "app" {
  name                      = "app"
  zone                      = "ru-central1-a"
  hostname                  = "app.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "gitlab" {
  name                      = "gitlab"
  zone                      = "ru-central1-a"
  hostname                  = "gitlab.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "runner" {
  name                      = "runner"
  zone                      = "ru-central1-a"
  hostname                  = "runner.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "monitoring" {
  name                      = "monitoring"
  zone                      = "ru-central1-a"
  hostname                  = "monitoring.apvanyushin.ru"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = var.ubuntu2004
      size        = "20"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet_1.id}"
    nat        = false
  }

  metadata = {
    ssh-keys = "ubuntu:${file("id_rsa.pub")}"
  }
}

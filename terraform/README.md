Terraform files
=========

`ansible.tf` - вызов ansible-playbook из Terraform. Предварительно запускается команда `sleep 240`, чтобы успели подняться все виртуальные машины в YC.  

`dns.tf` - создание публичной dns зоны, создание dns А записей для всех ресурсов, которые этого требуют в проекте. 

`inventory.tf` - запись данных для ansible inventory, в файл передаются данные при запуске terraform (в частности `${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}`), после чего данные записываются в файл `../ansible/inventory.yml`, который использует ansible Playbook.

`network.tf` - создание сети, двух подсетей в разных зонах и таблицы маршрутизации. 

`output.tf` - вывод информации по внешним и внутренним ip адресам виртуальных машин после выполнения всех команд terraform и ansible. 

`provider.tf` - Настройка провайдера YC, настройка backend terraform

`variables.tf` - файл с переменными. Подробнее о переменных ниже.

`vm.tf` - создание виртуальных машин с заданными параметрами вычислительной мощности и в указанных сетевых зонах. 


Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| yandex_cloud_id | "b1guied7m151qwecvpfo" | id аккаунта в yandex-cloud |
| yandex_folder_id | "b1ggh6rpqasdas1tmd8p" | id папки в аккаунте YC |
| ubuntu2004 | "fd8mn5e1cksb3s1pcq12" | id образа ubuntu 20.04, на основе которого подняты все vm |
| instance_ip | "192.168.101.101" | внутренний ip адрес vm `nginx` |
| fqdn | "apvanyushin.ru" | fqdn |

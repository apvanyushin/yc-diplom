Prometheus
=========

Установка Prometheus

Requirements
------------

Ubuntu

Переменные
--------------

Отсутствуют

Templates
------------

`alert.yml` - правило для alertmanager

`prometheus.service` - конфиг файл для работы prometheus.service

`prometheus.yml` - настройка работы promethus с alertmanager и сбор данных node expotrer

Example Playbook
----------------


    - hosts: servers
      roles:
         - prometheus


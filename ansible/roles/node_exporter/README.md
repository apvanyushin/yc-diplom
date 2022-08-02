Node_exporter
=========

Установка node_exporter

Requirements
------------

Ubuntu

Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| node_exporter_version | '0.18.1'| Версия Node exporter|
| node_exporter_arch | 'amd64' | Используемая архитектура для Node exporter|
| node_exporter_download_url | https://github.com/prometheus/node_exporter/releases/download/v{{ node_exporter_version }}/node_exporter-{{ node_exporter_version }}.linux-{{ node_exporter_arch }}.tar.gz| Ссылка для скачивания Node exporter |
| node_exporter_bin_path | /usr/local/bin/node_exporter | Папка bin Node exporter|


Templates
------------

`node_exporter.service.j2` конфиг файл для работы systemd daemon node_exporter.service

Example Playbook
----------------


    - hosts: servers
      roles:
         - node_exporter


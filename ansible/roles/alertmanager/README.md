Alertmanager
=========

Установка aletrmanager на ubuntu

Переменные
--------------

Отсутствуют

Templates
------------

- alertmanager.service - для создания systemd service alertmanager

Example Playbook
----------------

    - hosts: servers
      roles:
         - alertmanager


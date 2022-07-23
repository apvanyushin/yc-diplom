MySQL
=========

Установка кластера MySQL с двумя нодами (master и slave)

Requirements
------------

Ubuntu

Role Variables
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| db_user | wordpress | Пользователь БД |
| db_password | wordpress | Пароль для пользователя БД |
| db_name | wordpress | Имя БД |
| mysql_replication_master | db01 | Master node |
| mysql_replication_user | db_adm | Пользователь репликации |
| mysql_replication_user_password | "Q1e$#eqw78" | Пароль для пользователя репликации|
| mysql_packages| mysql-server, python3-mysqldb | Устанавливаемые зависимости для MySQL |
| mysql_service | mysql | mysql сервис |
| mysql_conf_dir | "/etc/mysql" | Папка конфигурации mysql|


templates
------------

- master.cnf
- slave.cnf

Example Playbook
----------------

    - hosts: servers
      roles:
         - mysql


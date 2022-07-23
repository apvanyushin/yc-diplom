Wordpress
=========

Установка apache и wordpress. Копирование файла authorized_keys, чтобы к этому хосту мог подключиться gitlab runner

Requirements
------------

Ubuntu

Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| php_modules | [ 'php-curl', 'php-gd', 'php-mbstring', 'php-xml', 'php-xmlrpc', 'php-soap', 'php-intl', 'php-zip' ] | Зависимости php|
| app_packages | [ 'apache2', 'python3-pymysql', 'php', 'php-mysql', 'libapache2-mod-php', 'git' ] | Зависимости wordpress |
| http_host | "app.apvanyushin.ru" | host apache2 |
| http_port | "80" | port apache2 |
| db_host | "db01" | Имя хоста БД для подключения wordpress |
| mysql_user| "wordpress" | Пользователь для подключения к БД |
| mysql_password | "wordpress" | Пароль для подключения к БД |
| mysql_db| "wordpress" | Имя базы данных |


Templates
------------

`apache.conf.j2` - конфиг apache

`authorized_keys` - подготовленный файл, благодаря которому Gitlab runner сможет подключитсья к этому хосту по ssh

`wp-config.php.j2` - конфиг wordpress 

Example Playbook
----------------

    - hosts: servers
      roles:
         - wordpress



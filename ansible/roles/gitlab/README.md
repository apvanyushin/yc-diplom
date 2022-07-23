Gitlab-CE
=========

Install self-hosted Gitlab-CE

Requirements
------------

Ubuntu

Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| gitlab_domain | gitlab.apvanyushin.ru | Ваш gitlab домен|
| gitlab_external_url | http://{{ gitlab_domain }}/ | Внешний адрес gitlab |
| gitlab_edition |"gitlab-ce" | Версия gitlab (по умолчанию community edition) |
| gitlab_config_template | "gitlab.rb.j2" | имя файла с кастомной конфигурацией gitlab |
| gitlab_repository_installation_script_url | "https://packages.gitlab.com/install/repositories/gitlab/{{ gitlab_edition }}/script.deb.sh"| Ссылка на скрипт установки gitlab|
 | gitlab_dependencies: |postfix, curl, tzdata| зависимости gitlab|
 | gitlab_time_zone | UTF | Таймзона |
 | gitlab_default_theme | 2 | Тема gitlab |
 | gitlab_root_pass |  "EgT2vcmVW!ql1" | Пароль для root |
 | gitlab_runner_token | "GR1348741mwxxg9ekV2nEgT2vcmVW" | Кастомный токен для регистрации собственного gitlab runner|

templates
------------

- gitlab.rb.j2 - конфиг файл gitlab server

Example Playbook
----------------

    - hosts: servers
      roles:
         - gitlab


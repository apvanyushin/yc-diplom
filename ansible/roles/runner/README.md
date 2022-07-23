Runner
=========

Установка self-hosted Gitlab Runner.

Requirements
------------

- Ubuntu 
- Self-hosted Gitlab CE

Переменные
--------------

| Variable name | Default | Description |
|--------------|-----------------------------|------------------------------------------------|
| gitlab_runner_token | "GR1348741mwxxg9ekV2nEgT2vcmVW" | Токен для регистрации раннера в gitlab |
| domain | "apvanyushin.ru" | Ваш домен |

Templates
--------------

`id_rsa` - приватный ssh ключ. Для подключения по ssh к хосту app с wordpress

`id_rsa.pub` - публичный ssh ключ. Для подключения по ssh к хосту app с wordpress

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - runner



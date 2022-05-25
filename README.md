Комплексная подборка инструментов мониторинга с отображением в Grafana
========

Решение по мониторингу [Grafana](http://grafana.org/) +  [ClickHouse](http://clickhouse.com/)

Хранение метрик происходит в Graphite, но СУБД вместо wisper используется clickhouse
## Протестирована установка на MS Windows 11 WSL Ubuntu 20.04 и CentOS 
## Install


### Клонируем репозиторий на диск и запускаем compose up:

```
git clone https://github    .com/alexxsub/monitoring-grafana.git
cd monitoring-grafana
docker-compose up -d
```

### Переменные окружения .env:
```
ADMIN_USER=admin  
ADMIN_PASSWORD=admin
```

## Требования

* Docker Engine >= 1.13
* Docker Compose >= 1.11
```
docker -v
docker-compose -v
```

## Список контейнеров:
ClickHouse авторизация в WEB GUI как пользователь:***default*** пароль: ***''***.

* click-server (база данных для метрик) `http://localhost:8123` (простой GUI нтерфейс) `http://localhost:8123/play`
* click-client (коммандный клиент на 9000 порту)
```
./client.sh
```
* [tabix-gui](http://tabix.io/) (GUI WEB интерфейс для CLickHouse ) `http://localhost:82`
* [graphite-gui](https://graphiteapp.org/) (GUI WEB интерфейс для Graphite, front-end ) `http://localhost:83`
* [carbone-clickhouse](https://github.com/go-graphite/carbon-clickhouse) (демон, принимающий метрики Graphite ) `порты 2003,2004,200б`
* [graphite-clickhouse](https://github.com/go-graphite/graphite-clickhouse) (бэкенд Graphite с поддержкой ClickHouse ) 
* [grafana-gui](https://grafana.com/) (GUI WEB интерфейс для отображения местрик ) `http://localhost:3000`

## Настройка Grafana

Переходим по ссылке `http://localhost:3000`  и авторизуемся как пользователь:***admin*** пароль: ***admin***. Это дефолтные учетные данные, они прописываются в .env, либо замените пароль на свой. Графана потребует сменить пароль

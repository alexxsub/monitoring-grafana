Комплексная подборка инструментов мониторинга Grafana
========

Решение по мониторингу [Grafana](http://grafana.org/) +  [ClickHouse](http://clickhouse.com/)

## Install



### Клонируем репозиторий на диск и запускаем compose up:

```
git clone https://github.com/alexxsub/monitoring-grafana.git
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
ClickHouse авторизация как пользователь:***default*** пароль: ***''***.

* ClickHouse (база данных для метрик) `http://localhost:8123`
* ClickHouse (коммандный клиент на 9000 порту)
```
./client.sh
```
* ClickHouse (простой GUI нтерфейс) `http://localhost:8123/play`



## Настройка Grafana

Переходим по ссылке `http://localhost:3000`  и авторизуемся как пользователь:***admin*** пароль: ***admin***. Это дефолтные учетные данные, они прописываются в .env, либо замените пароль на свой. Графана потребует сменить пароль

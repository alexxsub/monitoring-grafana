# Quick Start
```sh
git clone https://github.com/lomik/graphite-clickhouse-tldr
cd graphite-clickhouse-tldr
export UID
docker-compose up
```
Open http://127.0.0.1:81/ in browser UI Graphite
Open http://127.0.0.1:82/ in browser UI tabix.io  (host:localhost:8123,user:default, password:'')

### Mapped Ports

Host | Container | Service
---- | --------- | -------------------------------------------------------------------------------------------------------------------
  80 |        80 | [nginx](https://www.nginx.com/resources/admin-guide/)
2003 |      2003 | [carbon receiver - plaintext](http://graphite.readthedocs.io/en/latest/feeding-carbon.html#the-plaintext-protocol)
2004 |      2004 | [carbon receiver - pickle](http://graphite.readthedocs.io/en/latest/feeding-carbon.html#the-pickle-protocol)
2006 |      2006 | [carbon receiver - prometheus remote write](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#%3Cremote_write%3E)


### Additional cmds Cat config
```sh
sudo docker exec -it clickhouse-server cat /etc/clickhouse-server/users.xml > config/clickhouse/users.xml
sudo docker exec -it clickhouse-server cat /etc/clickhouse-server/config.xml > config/clickhouse/config.xml
```
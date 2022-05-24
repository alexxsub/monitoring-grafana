#!/bin/sh

touch /var/log/carbon-clickhouse.log

exec /entrypoint "${@}"

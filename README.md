# AWS RDS PostgreSQL Logs Exporter to Elasticsearch via Fluentd

[![Build Status](https://travis-ci.org/pperzyna/postgresql_aws_logs_collector.svg?branch=master)](https://travis-ci.org/pperzyna/postgresql_aws_logs_collector)
[![Docker Pulls](https://img.shields.io/docker/pulls/pperzyna/postgresql_aws_logs_collector.svg)](https://hub.docker.com/r/pperzyna/postgresql_aws_logs_collector/tags)

This repository shows a solution how to stream logs from AWS RDS Postgres directly to Elasticsearch.

## Dependencies

* [fluent/fluentd](https://github.com/fluent/fluentd) - v1.6-1
* [uken/fluent-plugin-elasticsearch](https://github.com/uken/fluent-plugin-elasticsearch) - v3.5.4
* [shinsaka/fluent-plugin-rds-pgsql-log](https://github.com/shinsaka/fluent-plugin-rds-pgsql-log) - v0.5.0
* [autopp/fluent-plugin-time-filter](https://github.com/autopp/fluent-plugin-time-filter) - v0.1.0

## Quick Start

This package is available with docker image:

``` bash
docker run -v "${PWD}/fluent.conf:/fluentd/etc/fluent.conf" pperzyna/postgresql_aws_logs_collector
```

## building and running

1. Update fluent.conf
2. Run docker-compose

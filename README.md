![build](https://github.com/asteny/rabbitmq-exporter-deb/actions/workflows/build.yml/badge.svg)


RabbitMQ exporter deb
==========================

Deb package with [RabbitMQ exporter](https://github.com/kbudde/rabbitmq_exporter) for Ubuntu (xenial, bionic,focal)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8AECDE414187DB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A57ED69D49D1012A
printf "deb https://packagecloud.io/the_asten/prometheus/ubuntu/ jammy main \ndeb-src https://packagecloud.io/the_asten/prometheus/ubuntu/ jammy main" | tee -a /etc/apt/sources.list.d/prometheus.list
apt-get update
apt-get install rabbitmq-exporter -y

```

Rabbitmq_exporter uses environment variables for configuration.
Environment file path: /etc/rabbitmq_exporter.environment

Special thanks for the ability to use the package repository for open source projects - :rocket: https://packagecloud.io :rocket:

[All package versions in packagecloud.io repo](https://packagecloud.io/the_asten/prometheus)
-------------------------------------------------------------------------------

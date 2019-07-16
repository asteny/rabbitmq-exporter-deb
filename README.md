[![Build Status](https://travis-ci.org/asteny/rabbitmq-exporter-deb.svg?branch=master)](https://travis-ci.org/asteny/rabbitmq-exporter-deb)[![Download](https://api.bintray.com/packages/asten/rabbitmq_exporter/rabbitmq_exporter/images/download.svg)](https://bintray.com/asten/rabbitmq_exporter/rabbitmq_exporter/_latestVersion)


RabbitMQ exporter deb
==========================

Deb package with [RabbitMQ exporter](https://github.com/kbudde/rabbitmq_exporter) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/rabbitmq_exporter xenial main" | tee -a /etc/apt/sources.list.d/rabbitmq_exporter.list
apt-get update
apt-get install rabbitmq-exporter -y

```

Rabbitmq_exporter uses environment variables for configuration.
Environment file path: /etc/rabbitmq_exporter.environment

[All package versions in Bintray repo](https://bintray.com/asten/rabbitmq_exporter/rabbitmq_exporter)
-------------------------------------------------------------------------------

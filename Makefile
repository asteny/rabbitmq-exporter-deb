all: build

build: compress
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n rabbitmq_exporter \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/rabbitmq_exporter.postinstall \
		--after-remove build/contrib/rabbitmq_exporter.postrm \
		-p build/packages \
		/tmp/rabbitmq_exporter/rabbitmq_exporter=/usr/bin/ \
		build/contrib/rabbitmq_exporter.service=/lib/systemd/system/rabbitmq_exporter.service \
		build/contrib/rabbitmq_exporter.environment=/etc/rabbitmq_exporter.environment \
		build/contrib/rabbitmq_exporter.preset=/usr/lib/systemd/system-preset/rabbitmq_exporter.preset

compress: download
	upx /tmp/rabbitmq_exporter/rabbitmq_exporter

download:
	cd /tmp && curl -Lo rabbitmq_exporter.tar.gz https://github.com/kbudde/rabbitmq_exporter/releases/download/v$(VERSION)/rabbitmq_exporter_$(VERSION)_linux_amd64.tar.gz
	cd /tmp && tar -xvf /tmp/rabbitmq_exporter.tar.gz && mv rabbitmq_exporter-$(VERSION)_linux-amd64 rabbitmq_exporter

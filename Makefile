.PHONY: all
default: all;

build:
	docker-compose \
		-f docker-compose.yaml \
		-f docker-compose.local.yaml \
		build --no-cache

start:
	docker-compose \
		-f docker-compose.yaml \
		-f docker-compose.local.yaml \
		up -d

restart:
	docker-compose \
		-f docker-compose.yaml \
		-f docker-compose.local.yaml \
		restart

stop:
	docker-compose \
		-f docker-compose.yaml \
		-f docker-compose.local.yaml \
		down --remove-orphans

all: build start

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

stop:
	docker-compose \
		-f docker-compose.yaml \
		-f docker-compose.local.yaml \
		down --remove-orphans

all: build start

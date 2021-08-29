.PHONY: all
default: all;

build:
	docker-compose \
		-f docker-compose.yml \
		-f docker-compose.local.yml \
		build --no-cache

start:
	docker-compose \
		-f docker-compose.yml \
		-f docker-compose.local.yml \
		up -d

stop:
	docker-compose \
		-f docker-compose.yml \
		-f docker-compose.local.yml \
		down --remove-orphans

all: build start


up:
	docker compose -f srcs/docker-compose.yml up --build -d

build:
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

.PHONY: up build

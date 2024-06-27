
up:
	docker compose -f srcs/docker-compose.yml up --build -d

build:
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

clean: down

fclean: clean
	docker compose -f srcs/docker-compose.yml rm

re: fclean up

.PHONY: up build down clean fclean re

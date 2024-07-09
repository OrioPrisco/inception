
up: | $(HOME)/data
	docker compose -f srcs/docker-compose.yml up --build -d

build: | $(HOME)/data
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

clean: down

fclean: clean
	docker compose -f srcs/docker-compose.yml rm

re: fclean up

$(HOME)/data:
	mkdir $(HOME)/data/

.PHONY: up build down clean fclean re

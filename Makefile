
VOLUMES = $(HOME)/data/db $(HOME)/data/wordpress

up: | $(VOLUMES)
	docker compose -f srcs/docker-compose.yml up --build -d

build: | $(VOLUMES)
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

clean: down

fclean: clean
	docker compose -f srcs/docker-compose.yml rm

re: fclean up

$(VOLUMES):
	mkdir -p $(VOLUMES)

.PHONY: up build down clean fclean re


VOLUMES = $(HOME)/data/db $(HOME)/data/wordpress
SUBMODULE = srcs/requirements/bonus/static-website/tools/STAR/web

up: | $(VOLUMES) $(SUBMODULE)
	docker compose -f srcs/docker-compose.yml up --build -d

build: | $(VOLUMES) $(SUBMODULE)
	docker compose -f srcs/docker-compose.yml build

down:
	docker compose -f srcs/docker-compose.yml down

clean: down

fclean: clean
	docker compose -f srcs/docker-compose.yml rm

re: fclean up

$(VOLUMES):
	mkdir -p $(VOLUMES)

$(SUBMODULE):
	git submodule update --init $<

.PHONY: up build down clean fclean re

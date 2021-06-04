-include .env

create:
	docker-compose run --rm node npx @docusaurus/init@latest init ${COMPOSE_PROJECT_NAME} classic

up:
	docker-compose up -d

build:
	docker-compose build --no-cache --force-rm
	@make up

down:
	docker-compose down

restart:
	@make down
	@make up

exec:
	docker-compose exec node ash
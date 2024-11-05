.DEFAULT_GOAL := help

local-prod:
	docker compose up --build -d

start-prod:
	docker compose start

stop-prod:
	docker compose stop

php_ssh:
	docker compose exec php sh

remove-prod:
	docker compose down

help:
	@echo "? local : launch local environment"
	@echo "? start : starts local environment"
	@echo "? stop : stops local environment"
	@echo "? php_ssh : starts the php shell"
	@echo "? remove : removes environment containers"


# dev enviroment
local:
	docker compose -f docker-compose-local.yml up --build -d

start:
	docker compose -f docker-compose-local.yml start

stop:
	docker compose -f docker-compose-local.yml stop

remove:
	docker compose -f docker-compose-local.yml down

.ONESHELL:

all: help

start-devnet: ## start the devnet
	@echo ''
	cd devnet && echo '' && docker-compose up -d --force-recreate --remove-orphans
	@echo ''
	@echo 'Useful resouces:'
	@echo ' - Node Swagger: http://127.0.0.1:22973/docs'
	@echo ' - Explorer Swagger: http://127.0.0.1:9090/docs'
	@echo ' - Explorer Frontend: http://localhost:23000'
	@echo ''

stop-devnet: ## stop the devnet
	@echo ''
	cd devnet && echo '' && docker-compose down

restart-devnet: ## restart the devnet
	@make stop-devnet
	@make start-devnet

help: ## print this help
	@grep '##' $(MAKEFILE_LIST) \
		| grep -Ev 'grep|###' \
		| sed -e 's/^\([^:]*\):[^#]*##\([^#]*\)$$/\1:\2/' \
		| awk -F ":" '{ printf "%-25s%s\n", "\033[1;32m" $$1 ":\033[m", $$2 }' \
		| grep -v 'sed'

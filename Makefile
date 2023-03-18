start-devnet:
	@echo ''
	cd devnet && echo '' && docker-compose up -d --force-recreate --remove-orphans
	@echo ''
	@echo 'Useful resouces:'
	@echo ' - Node Swagger: http://127.0.0.1:22973/docs'
	@echo ' - Explorer Swagger: http://127.0.0.1:9090/docs'
	@echo ' - Explorer Frontend: http://localhost:23000'
	@echo ''

stop-devnet:
	@echo ''
	cd devnet && echo '' && docker-compose down

restart-devnet:
	@make stop-devnet
	@make start-devnet

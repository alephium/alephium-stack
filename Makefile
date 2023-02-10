start-devnet:
	cd devnet && docker-compose up -d --force-recreate
	@echo ''
	@echo 'Useful resouces:'
	@echo ' - Node Swagger: http://127.0.0.1:22973/docs'
	@echo ' - Explorer Swagger: http://127.0.0.1:9090/docs'
	@echo ' - Explorer Frontend: http://localhost:23000'

stop-devnet:
	cd devnet && docker-compose down

restart-devnet:
	@make stop-devnet
	@make start-devnet

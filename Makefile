.ONESHELL:

all: help

start-devnet: ## start the devnet
	@echo ''
	cd devnet && echo '' && \
    if docker --help | grep -q 'compose'; then \
      docker compose up -d --force-recreate --remove-orphans; \
    else \
      docker-compose up -d --force-recreate --remove-orphans; \
    fi
	@echo ''
	@echo 'Useful resouces:'
	@echo ' - Node Swagger: http://127.0.0.1:22973/docs'
	@echo ' - Explorer Swagger: http://127.0.0.1:9090/docs'
	@echo ' - Explorer Frontend: http://localhost:23000'
	@echo ''
	@echo 'Genesis balance allocated to 4 accounts of seed: vault alarm sad mass witness property virus style good flower rice alpha viable evidence run glare pretty scout evil judge enroll refuse another lava'
	@echo ''
	@echo 'Address 1:     1DrDyTr9RpRsQnDnXo2YRiPzPW4ooHX5LLoqXrqfMrpQH'
	@echo 'Private Key 1: a642942e67258589cd2b1822c631506632db5a12aabcf413604e785300d762a5',
	@echo ''
	@echo 'Address 2:     14UAjZ3qcmEVKdTo84Kwf4RprTQi86w2TefnnGFjov9xF'
	@echo 'Private Key 2: ec8c4e863e4027d5217c382bfc67bd2638f21d6f956653505229f1d242123a9a',
	@echo ''
	@echo 'Address 3:     15jjExDyS8q3Wqk9v29PCQ21jDqubDrD8WQdgn6VW2oi4'
	@echo 'Private Key 3: bd7dd0c4abd3cf8ba2d169c8320a2cc8bc8ab583b0db9a32d4352d6f5b15d037',
	@echo ''
	@echo 'Address 4:     17cBiTcWhung3WDLuc9ja5Y7BMus5Q7CD9wYBxS1r1P2R'
	@echo 'Private Key 4: 93ae1392f36a592aca154ea14e51b791c248beaea1b63117c57cc46d56e5f482',

stop-devnet: ## stop the devnet
	@echo ''
	cd devnet && echo '' && \
    if docker --help | grep -q 'compose'; then \
      docker compose down; \
    else \
      docker-compose down; \
    fi

restart-devnet: ## restart the devnet
	@make stop-devnet
	@make start-devnet

help: ## print this help
	@grep '##' $(MAKEFILE_LIST) \
		| grep -Ev 'grep|###' \
		| sed -e 's/^\([^:]*\):[^#]*##\([^#]*\)$$/\1:\2/' \
		| awk -F ":" '{ printf "%-25s%s\n", "\033[1;32m" $$1 ":\033[m", $$2 }' \
		| grep -v 'sed'

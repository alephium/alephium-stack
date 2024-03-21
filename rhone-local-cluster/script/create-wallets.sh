#!/usr/bin/env bash

set -e

NUMBER_OF_NODES=${1:-3}
PORT_1=${2:-22973}

for i in $(seq 0 $((NUMBER_OF_NODES-1)));
do
    curl -X PUT http://localhost:$((PORT_1+i))/wallets -d '{"password": "password", "mnemonic": "toward outdoor daughter deny mansion bench water alien crumble mother exchange screen salute antenna abuse key hair crisp debate goose great market core screen", "walletName": "local-cluster-test"}'
done

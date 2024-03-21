#!/usr/bin/env bash

set -e

NUMBER_OF_NODES=${1:-3}
PORT_1=${2:-22973}

for i in $(seq 0 $((NUMBER_OF_NODES-1)));
do
    curl -X POST http://localhost:22973/wallets/local-cluster-test/unlock -d '{"password": "password"}'
done

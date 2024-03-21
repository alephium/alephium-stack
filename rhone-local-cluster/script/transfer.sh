#!/usr/bin/env bash

set -e

NUMBER_OF_NODES=${1:-3}
PORT_1=${2:-22973}
INTERVAL_SECONDS=${3:-2}

while [ true ]; do
    for i in $(seq 0 $((NUMBER_OF_NODES-1)));
    do
        curl -X POST http://localhost:$((PORT_1+i))/wallets/local-cluster-test/transfer -d '{"destinations": [{"address": "193maApeJWrz9GFwWCfa982ccLARVE9Y1WgKSJaUs7UAx", "attoAlphAmount": "1000000000000000000"}]}'
        echo
        sleep $INTERVAL_SECONDS
    done
done

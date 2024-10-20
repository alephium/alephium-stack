This repository contains the docker compose files for the mainnet, testnet and devnet.

## Devnet

Run a local devnet for development and testing purposes.

### Help

```
make help
```

### Start Devnet

```
make start-devnet
```

Node Swagger: http://127.0.0.1:22973/docs

Explorer Swagger: http://127.0.0.1:9090/docs

Explorer frontend: http://localhost:23000

### Stop Devnet

```
make stop-devnet
```

### Restart Devnet

```
make restart-devnet
```

### Usage

Make sure to use port `22973` for the node host and `23000` for the explorer frontend.

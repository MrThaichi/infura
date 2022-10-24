#!/usr/bin/env bash
docker run \
  --rm \
  -p 9545:9545 \
  --user "$(id -u):$(id -g)" \
  -e RUST_LOG=info \
  -e PATHFINDER_ETHEREUM_API_URL="https://mainnet.infura.io/v3/fb1f42fecf6e43e08b76dd109964e4bf" \
  -v $HOME/pathfinder:/usr/share/pathfinder/data \
  eqlabs/pathfinder
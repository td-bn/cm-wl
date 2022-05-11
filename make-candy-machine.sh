#!/bin/bash

# Remove existing CM
rm -rf .cache

ts-node <Location of CMv2 cli> upload \
-e devnet \
-k ~/.config/solana/id.json \
-cp config.json \
-c cm-wl \
./assets

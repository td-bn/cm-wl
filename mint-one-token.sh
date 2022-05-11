#!/bin/bash

ts-node ~/ws/vx/metaplex/js/packages/cli/src/candy-machine-v2-cli.ts mint_one_token \
-e devnet \
-k ~/.config/solana/id.json \
-c cm-wl

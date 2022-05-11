#!/bin/bash

mint=$(spl-token create-token --decimals 0 | cut -d " " -f 3)
echo "Mint: $mint"

acc=$(spl-token create-account $mint | cut -d " " -f 3)
echo "Acc: $acc"

spl-token mint $mint 1 $acc
echo "Bal: $(spl-token balance $mint)"

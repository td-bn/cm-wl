# Candy Machine test WL features simple scripts

## Before using
1. Please ensure you have the following tools are installed and working:
- solana cli tools [See](https://docs.solana.com/cli/install-solana-cli-tools)
- spl-token cli [See](https://spl.solana.com/token)

2. Also ensure that you have generated a keypair. By default the wallet keypair is at `~/.config/solana/id.json`

3. Give the scripts the execute permission using `chmod`

4. Clone the metaplex repository locally `https://github.com/metaplex-foundation/metaplex/`. Follow build instructions here `https://github.com/metaplex-foundation/metaplex/tree/master/js/packages/cli`

5. We'll use the `candy-machine-v2-cli.ts` cli to create the candy machine. Make sure the `make-candy-machine.sh` has the correct localtion of the `candy-machine-v2-cli.ts` file e.g. 
```bash
ts-node ~/metaplex/js/packages/cli/src/candy-machine-v2-cli.ts upload \
...
```

## Usage
1. Run `./create-wl-mint.sh`
2. It will create a new token for the whitelist mint, and print it on the console. Lets call it `MINT`
3. Paste the `MINT` in the config.json file in the WL mint settings.
4. Upload the candy machine using `./make-candy-machine.sh`
5. Mint a token using `./mint-one-token.sh`

You can query the balance of WL tokens at any step using: `spl-token balance MINT`

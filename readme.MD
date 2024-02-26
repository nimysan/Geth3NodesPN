password: 1025bcfdcc0aa8f0e

cat boot.key: a83441779771f5079ea3862df8d8289d1b34c8ffafd80e8990cc213708b6ae31

0xf3Fa65794aB08c1e06f01A0F9B39A19bB7349FC5

```bash
mkdir -p ethpoa/node
cd ethpoa/node
geth account new --datadir data

bootnode -nodekey boot.key -verbosity 9 -addr :30311 > node.json

```# Geth3NodesPN

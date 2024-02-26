bootnode -nodekey boot.key -verbosity 9 -addr 172.31.70.63:30311 > node1.json

bootnode -nodekey boot.key -verbosity 9 -addr 172.31.72.203:30311 > node2.json




geth --datadir data --networkid 666 --authrpc.port 8551 --http --http.port 8001 --http.api "eth,net,web3,personal,admin,miner" --bootnodes enode://a4ebdb71c3cc641f5d0ea67601c8ab92040ba88635cd62cda485b719b9723cfea2a8175fff919d4159ef1431d336cd560a497ce15600cf0aaf47950d5167e0ad@172.31.70.63:0?discport=30311 --port 30311 --mine --unlock 0x19AE1f96005E912251884BcD6B3f5c3652F96146 --password password.txt --miner.etherbase 0x19AE1f96005E912251884BcD6B3f5c3652F96146 --allow-insecure-unlock --syncmode "full" console


geth --datadir data --networkid 666 --authrpc.port 8551 --http --http.port 8001 --http.api "eth,net,web3,personal,admin,miner" --bootnodes enode://a4ebdb71c3cc641f5d0ea67601c8ab92040ba88635cd62cda485b719b9723cfea2a8175fff919d4159ef1431d336cd560a497ce15600cf0aaf47950d5167e0ad@172.31.72.203:0?discport=30311 --port 30311 --mine --unlock 0xadC5F6c161Fb38DA9de4c9c98a8231C3497A9232 --password password.txt --miner.etherbase 0xadC5F6c161Fb38DA9de4c9c98a8231C3497A9232 --allow-insecure-unlock --syncmode "full" console


geth --datadir data --networkid 666 --authrpc.port 8551 --http --http.port 8001 --http.api "eth,net,web3,personal,admin,miner" --bootnodes enode://a4ebdb71c3cc641f5d0ea67601c8ab92040ba88635cd62cda485b719b9723cfea2a8175fff919d4159ef1431d336cd560a497ce15600cf0aaf47950d5167e0ad@127.0.0.1:0?discport=30313 --port 30313 --mine --unlock 0x7AD7cfdc8cc2d8988794DC6Aea30705d5f6cCbdb --password password.txt --miner.etherbase 0x7AD7cfdc8cc2d8988794DC6Aea30705d5f6cCbdb --allow-insecure-unlock --syncmode "full" console

# 加入区块
clique.propose("0xadC5F6c161Fb38DA9de4c9c98a8231C3497A9232",true)

clique.propose("0x7AD7cfdc8cc2d8988794DC6Aea30705d5f6cCbdb",true)


eth.getBalance("0x19AE1f96005E912251884BcD6B3f5c3652F96146")
eth.getBalance("0xadC5F6c161Fb38DA9de4c9c98a8231C3497A9232")
eth.getBalance("0x7AD7cfdc8cc2d8988794DC6Aea30705d5f6cCbdb")


personal.unlockAccount("0x19AE1f96005E912251884BcD6B3f5c3652F96146")

装张
eth.sendTransaction({from: "0x19AE1f96005E912251884BcD6B3f5c3652F96146", to: "0xadC5F6c161Fb38DA9de4c9c98a8231C3497A9232", value: web3.toWei(777, "ether")})

#0x08690e28091fd7af24a5413672d6a9e4a15f3e70ae3f79a23426675addb3b4d0
eth.getTransactionReceipt("0x08690e28091fd7af24a5413672d6a9e4a15f3e70ae3f79a23426675addb3b4d0")

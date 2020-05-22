#!/bin/sh
ABSOLUTE_PATH="/Users/barno/Documents/bizantino/Bitcoin"

CONF="/Users/barno/Documents/bizantino/Bitcoin_2/bitcoin_nodo2.conf"
ABSOLUTE_PATH_2="/Users/barno/Documents/bizantino/Bitcoin_2"

if [ -z "$ABSOLUTE_PATH" ]
then
      echo "\$ABSOLUTE_PATH Please set your ABSOLUTE PATH"
      exit
fi

bitcoin-cli stop && sleep 5 && rm -Rf $ABSOLUTE_PATH/regtest && bitcoind && sleep 5
bitcoin-cli -conf=$CONF stop && sleep 5 && rm -Rf $ABSOLUTE_PATH_2/regtest && bitcoind -conf=$CONF && sleep 5

MINER=`bitcoin-cli getnewaddress "miner" "bech32"`
bitcoin-cli generatetoaddress 1000 $MINER >> /dev/null

LASZLO=`bitcoin-cli -conf=$CONF getnewaddress "laszlo" "bech32"`
LUIGI=`bitcoin-cli getnewaddress "" "bech32"`

bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 250.00000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 80.00000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 305.00000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

bitcoin-cli sendtoaddress $LASZLO 0.01000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 200.00000000
bitcoin-cli sendtoaddress $LASZLO 111.00000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 150.00000000
bitcoin-cli sendtoaddress $LASZLO 450.00000000
bitcoin-cli sendtoaddress $LASZLO 3753.88000000
bitcoin-cli sendtoaddress $LASZLO 450.00000000
bitcoin-cli sendtoaddress $LASZLO 400.00000000
bitcoin-cli sendtoaddress $LASZLO 900.00000000
bitcoin-cli sendtoaddress $LASZLO 800.00000000
bitcoin-cli sendtoaddress $LASZLO 850.00000000
bitcoin-cli sendtoaddress $LASZLO 400.00000000

bitcoin-cli generatetoaddress 6 $MINER >> /dev/null

#LASZLO (native segwit P2WPKH) to Luigi (native segwit P2WPKH
TXID=$(bitcoin-cli -conf=$CONF sendtoaddress $LUIGI 10000.00000000)
bitcoin-cli generatetoaddress 6 $MINER >> /dev/null
bitcoin-cli -conf=$CONF getrawtransaction $TXID 2 | jq

printf "\n\n \e[105m ######### LASZLO (native segwit P2WPKH) to Luigi (native segwit P2WPKH)  #########\e[0m\n\n"

echo "\n"
printf "txid: "$(bitcoin-cli -conf=$CONF  getrawtransaction $TXID 2 | jq -r '.txid')
echo "\n"
printf "hash: "$(bitcoin-cli -conf=$CONF  getrawtransaction $TXID 2 | jq -r '.hash')
echo "\n"
printf "size: "$(bitcoin-cli -conf=$CONF  getrawtransaction $TXID 2 | jq -r '.size')
echo "\n"
printf "vsize: "$(bitcoin-cli -conf=$CONF  getrawtransaction $TXID 2 | jq -r '.vsize')
echo "\n"
printf "weight: "$(bitcoin-cli -conf=$CONF  getrawtransaction $TXID 2 | jq -r '.weight')
echo "\n"
expr "byte: "$(expr `printf $(bitcoin-cli -conf=$CONF  getrawtransaction $TXID) | wc -c` / 2)

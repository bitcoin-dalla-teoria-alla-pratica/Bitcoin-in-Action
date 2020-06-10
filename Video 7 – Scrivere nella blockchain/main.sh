ADDR=$(bitcoin-cli getnewaddress "" "bech32")
#tb1qpvtnfqqs3cp4ly4375km7n5sga8hkdkujkm854

#ottenere bitcoin dal faucet https://bitcoinfaucet.uo1.net/send.php
# esempio txid ottenuto 67bc5194442dc350312a7c0a5fc7ef912c31bf00b23349b4c3afdf177c91fb2f

#Verificare se è nell'array della mempool
#bitcoin-cli getrawmempool | grep 67bc5194442dc350312a7c0a5fc7ef912c31bf00b23349b4c3afdf177c91fb2f

TXID=67bc5194442dc350312a7c0a5fc7ef912c31bf00b23349b4c3afdf177c91fb2f

UTXO=$(bitcoin-cli listunspent 1 101 '["'$ADDR'"]' |  jq -r '.[] | select (.txid == "'$TXID'")')
PK=`bitcoin-cli dumpprivkey $ADDR`
VOUT=$(echo $UTXO | jq -r '.vout')
AMOUNT=$(echo $UTXO | jq -r '.amount-0.00001')
TOTAL_UTXO_AMOUNT=$(echo $UTXO | jq -r '.amount')
SCRIPTPUBKEY=$(echo $UTXO | jq -r '.scriptPubKey')


HEX=$(printf "corsobitcoin.com" | xxd -ps)
ADDR_DEST=$(bitcoin-cli getnewaddress "" "bech32")

TX_DATA=$(bitcoin-cli createrawtransaction '[{"txid":"'$TXID'","vout":'$VOUT'}]' '[{"'$ADDR_DEST'":'$AMOUNT'},{"data":"'$HEX'"}]')
TX_SIGNED=$(bitcoin-cli signrawtransactionwithkey $TX_DATA '["'$PK'"]' '[{"txid":"'$TXID'","vout":'$VOUT',"scriptPubKey":"'$SCRIPTPUBKEY'","amount":"'$TOTAL_UTXO_AMOUNT'"}]'  | jq -r '.hex')

bitcoin-cli sendrawtransaction $TX_SIGNED

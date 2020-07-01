ADDR=$(bitcoin-cli getnewaddress "" "legacy")
echo $ADDR
bitcoin-cli getaddressinfo $ADDR
SCRIPTPUB=$(bitcoin-cli getaddressinfo $ADDR | jq -r '.scriptPubKey')
#PB del video 031ed38602b00f062c62d677d16699cad7481086a3964e16d966a36d37b7041e60
PB=$(bitcoin-cli getaddressinfo $ADDR | jq -r '.pubkey')
bitcoin-cli decodescript $SCRIPTPUB
ADDR_SHA=`printf $PB | xxd -r -p | openssl sha256| sed 's/^.* //'`
echo "digest SHA256 "$ADDR_SHA
ADDR_RIPEMD160=`printf $ADDR_SHA |xxd -r -p | openssl ripemd160 | sed 's/^.* //'`
echo "digest RIPEMD160 "$ADDR_RIPEMD160
ADDR_2=$(printf 00$ADDR_RIPEMD160 | xxd -p -r | base58 -c)
echo "Address generato "$ADDR_2
echo "verifica se l'address e' lo stesso di quello ottentuo con la chiamata getnewaddress"
test $ADDR = $ADDR_2 && echo gli address sono uguali || echo gli address sono diversi

echo "\n \033[1;94mEsempio del video\033[0m \n"
PB=031ed38602b00f062c62d677d16699cad7481086a3964e16d966a36d37b7041e60
ADDR=15CgBgbgqrWDgVxeQHsMj8pCedUZ6WwZzL

ADDR_SHA=`printf $PB | xxd -r -p | openssl sha256| sed 's/^.* //'`
echo "digest SHA256 "$ADDR_SHA
ADDR_RIPEMD160=`printf $ADDR_SHA |xxd -r -p | openssl ripemd160 | sed 's/^.* //'`
echo "digest RIPEMD160 "$ADDR_RIPEMD160
ADDR_2=$(printf 00$ADDR_RIPEMD160 | xxd -p -r | base58 -c)
echo "Address generato "$ADDR_2
echo "verifica se l'address e' lo stesso di quello ottentuo con la chiamata getnewaddress"
test $ADDR = $ADDR_2 && echo gli address sono uguali || echo gli address sono diversi

echo "\n \033[1;31mTrova l'address della testnet! \033[0m"

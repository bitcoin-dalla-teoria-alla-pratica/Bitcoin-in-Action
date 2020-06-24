bitcoin-cli getblock $(bitcoin-cli getblockhash 1773164)
bitcoin-cli getblocktemplate '{"rules": ["segwit"]}'
bitcoin-cli getblocktemplate '{"rules": ["segwit"]}' | jq -r '.target'

ver=`printf 20800000 | tac -rs ..| tr -d '\n'`
prev=`printf 00000000000001249b9a4e000135acecec2dcd7385eba54639ff962f3883e861 | tac -rs .. | tr -d '\n'`
mkl=`printf 75870dd46a503862af6fcf700be5e02e008db4521d96713bda51607ed05e2a18 | tac -rs .. | tr -d '\n'`
time=`printf '%x\n' 1592919152 | tac -rs .. | tr -d '\n'`
bits=`echo 1a01a5f2 | tac -rs .. | tr -d '\n'`
nonce=`printf '%x\n' 3940145976 | tac -rs .. | tr -d '\n'`
printf $ver$prev$mkl$time$bits$nonce | xxd -r -p | sha256sum -b | xxd -r -p | sha256sum -b | awk '{printf $1}' | tac -rs ..

BITS_10="$(echo "obase=10; ibase=16; -u; $(echo 01a5f20000000000000000000000000000000000000000000000 | tr '[:lower:]' '[:upper:]')" |bc | sed -n 2p)"
TARGET="$(echo "obase=10; ibase=16; -u; $(echo 00000000000000eb74d096b83594d770f23d633e3a8b08813763489fbde7a0ef | tr '[:lower:]' '[:upper:]')" |bc | sed -n 2p)"

echo "Verifico la soluzione"
echo "$TARGET<$BITS_10"|bc

test 00000000000000eb74d096b83594d770f23d633e3a8b08813763489fbde7a0ef = $(bitcoin-cli getblockhash 1773164) && echo sono uguali || echo sono diversi

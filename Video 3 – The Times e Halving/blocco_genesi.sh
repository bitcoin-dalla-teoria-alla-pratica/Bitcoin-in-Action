BLOCK_HASH=$(bitcoin-cli getblockhash 0)

bitcoin-cli getblock $BLOCK_HASH

#error
bitcoin-cli getrawtransaction 4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b 2

bitcoin-cli getblock $BLOCK_HASH 2

#Hex to ASCII
echo 04ffff001d0104455468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73 | xxd -r -p

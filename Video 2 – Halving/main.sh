bitcoin-cli generatetoaddress 449 2NFkEocxkbw6KKWzAie8DjWqjJkkWPSpTmb
LAST_BLOCK_HASH=$(bitcoin-cli getbestblockhash)
TX=$(bitcoin-cli getblock $LAST_BLOCK_HASH | jq -r '.tx | last')
bitcoin-cli getrawtransaction $TX 2
bitcoin-cli generatetoaddress 1 2NFkEocxkbw6KKWzAie8DjWqjJkkWPSpTmb
LAST_BLOCK_HASH=$(bitcoin-cli generatetoaddress 1 2NFkEocxkbw6KKWzAie8DjWqjJkkWPSpTmb | jq -r 'last')
TX=$(bitcoin-cli getblock $LAST_BLOCK_HASH | jq -r '.tx | last')
bitcoin-cli getrawtransaction $TX 2

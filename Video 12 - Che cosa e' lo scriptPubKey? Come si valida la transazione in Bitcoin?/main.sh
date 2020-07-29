bitcoin-cli getrawtransaction 3446bb5b86fa410d6c8676b0f93e665d06d4a18c97c7d0f2d80460d9696b2325 2
bitcoin-cli getrawtransaction 3446bb5b86fa410d6c8676b0f93e665d06d4a18c97c7d0f2d80460d9696b2325 2 | jq -r '.vout[0]'
bitcoin-cli getrawtransaction 7408ac2f0230e779946e03911300dc39c4a48d39327aeb6c2cb13e1670c36371 2

printf $(echo 04ddd9f1b0ec593795d802cd27c442f3dd3db562b331616e554a88dddff62bba572bd535c853d5ef195db0cba621255669a5569caaaeae3802066c70fb2463b89e | xxd -r -p | openssl sha256| sed 's/^.* //') |xxd -r -p | openssl ripemd160 | sed 's/^.* //'

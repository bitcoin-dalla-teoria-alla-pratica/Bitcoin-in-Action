bitcoin-cli getrawtransaction c2297c9fefdd058e2ce5477868bcbf88bd4f860fbb552399053e3666687809bd 2
SCRIPTSIG=473044022059515b358d938d04c812177a2eefba52a4427b9e807c28538148e04edf042f3b022057e00e46acec7708b3087bfaadf25001ff449759b063aa9f39f5eb6606ceeef7014104794dffa10783c305d72c44acc36003760a53c03a1e5529747a5ef7eef7c87c6c19ba26c7eee03ab6da9115d11bce3a46dd21aede86af19c3ee19eeb7f8d92732
echo $SCRIPTSIG | cut -c 1-2
expr `echo "ibase=16; $(printf 47)" | bc` "*" 2
echo $SCRIPTSIG | cut -c 3-142
printf 3044022059515b358d938d04c812177a2eefba52a4427b9e807c28538148e04edf042f3b022057e00e46acec7708b3087bfaadf25001ff449759b063aa9f39f5eb6606ceeef7 | wc -c
echo $SCRIPTSIG | cut -c 143-144
echo $SCRIPTSIG | cut -c 145-146
expr `echo "ibase=16; $(printf 41)" | bc` "*" 2
echo $SCRIPTSIG | cut -c 147-277
bitcoin-cli getrawtransaction d44cbca5911e53322e14fe0617f078dd1f162a7dcb97f83690eac285ed7ebe80 2
printf $(echo 04794dffa10783c305d72c44acc36003760a53c03a1e5529747a5ef7eef7c87c6c19ba26c7eee03ab6da9115d11bce3a46dd21aede86af19c3ee19eeb7f8d92732 | xxd -r -p | openssl sha256| sed 's/^.* //') |xxd -r -p | openssl ripemd160 | sed 's/^.* //'

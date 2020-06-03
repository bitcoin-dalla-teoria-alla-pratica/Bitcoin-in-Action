wget https://bitcoincore.org/bin/bitcoin-core-0.19.1/bitcoin-0.19.1-osx64.tar.gz

wget https://bitcoincore.org/bin/bitcoin-core-0.19.1/SHA256SUMS.asc
wget https://bitcoin.org/laanwj-releases.asc

sha256sum --check SHA256SUMS.asc --ignore-missing

gpg --import ./laanwj-releases.asc
gpg --refresh-keys
gpg --verify SHA256SUMS.asc

tar -xvf bitcoin-0.19.1-osx64.tar.gz
mv bitcoin-0.19.1/bin/* /usr/local/bin

bitcoind -version

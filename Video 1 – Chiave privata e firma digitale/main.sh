mkdir alice
mkdir bob

cd alice
#private key
openssl ecparam -genkey -name secp256k1 -rand /dev/urandom -noout -out private.pem

#hexdump /dev/urandom

#public key
openssl ec -in private.pem -pubout -out public.pem

#create a message
echo "Bob I Love you!" > msg.txt

#signature
openssl dgst -sha256 -sign private.pem msg.txt > signature.bin
#xxd -p signature.bin |  tr -d '\n'  | awk '{print $1}'

cp ./{public.pem,signature.bin,msg.txt} ../Bob && cd ../Bob

#check signature
printf  "\n\e[44m ######### check signature #########\e[0m\n"
openssl dgst -sha256 -verify public.pem -signature signature.bin msg.txt

#append text
printf  "\n\e[41m ######### alter message and check signature #########\e[0m\n"
echo "bla bla bla!" >> msg.txt
openssl dgst -sha256 -verify public.pem -signature signature.bin msg.txt

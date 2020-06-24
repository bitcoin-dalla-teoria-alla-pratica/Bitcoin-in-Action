#Utilizzare due regtest
Per utilizzare due nodi regtest è necessario avere due cartelle distinte per ospitare la blockchain e due file di configurazione.

Il percorso del `datadir` che trovate nel file `bitcoin_nodo2.conf` deve essere cambiato con il percorso del vostro datadir.

I percorsi dichiarati nel file `pizza.sh` e `pizza_legacy.sh` devono essere cambiati con i vostri percorsi locali.

```
ABSOLUTE_PATH="/Users/barno/Documents/bizantino/Bitcoin"
CONF="/Users/barno/Documents/bizantino/Bitcoin_2/bitcoin_nodo2.conf"
ABSOLUTE_PATH_2="/Users/barno/Documents/bizantino/Bitcoin_2"
```

- `ABSOLUTE_PATH` è il percorso assoluto del datadir del primo nodo
- `CONF` è il percorso assoluto del file di configurazione del vostro secondo nodo
- `ABSOLUTE_PATH_2` è il percorso assoluto del datadir vostro secondo nodo 

Per maggiori informazioni consulare il link [https://en.bitcoin.it/wiki/Data_directory
](https://en.bitcoin.it/wiki/Data_directory)

- Il post originale: [https://bit.ly/2TqL5RT](https://bit.ly/2TqL5RT)
- La transazione: [https://bit.ly/3bVLWR0](https://bit.ly/2TqL5RT)
- Le pizze: [http://heliacal.net/~solar/bitcoin/pizza](https://bit.ly/2TqL5RT) 🍕🍕
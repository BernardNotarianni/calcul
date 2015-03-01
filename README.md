# Calcul

Application de démonstration pour le erlang meetup #1 de Paris

###But
Transformer un programme simple pour qu'il tourne sur plusieurs neuds.

###Algo:
Somme des carrés des entiers pair divisible par 13.

###Contenu:
Deux applications OTP: 
 - calcul_master: à lancer sur le node master
 - calcul_slave: à lancer sur les nodes slave
 
###Installation

Peut fonctionner en local dans differents shell ou bien sur plusieurs machines, VMs, raspberrys ...

```
git clone https://github.com/Erlang-Startups-Paris/calcul.git
```

Dans 1 fenetre shell

```
cd master
erl -make
./start.sh
```

Dans une autre fenetre shell

```
cd slave
erl -make
./start.sh
```

Depuis le shell du master
```
(master@localhost)1> gen_server:call({calcul_slave_server, 'slave@localhost'}, {calculate, 1, 100}).
```

##TODO

- [ ] distribuer le calcul sur les nodes

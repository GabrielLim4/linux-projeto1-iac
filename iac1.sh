#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de acesso..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos Souza" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria da Silva" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "João Santos" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e
useradd debora -c "Debora Oliveira" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Costa" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Pereira" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e
useradd josefina -c "Josefina Rodrigues" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda Almeida" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio Nascimento" -m -s /bin/bash -p$(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Especificando permisões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento finalizado com sucesso!"

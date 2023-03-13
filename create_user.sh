#!/bin/bash

echo "Creating system users..."

useradd guest10 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest11 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd guest11 -e

useradd guest12 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd guest12 -e

useradd guest13 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd -1 Senha123)
passwd guest13 -e

echo "Finish!"

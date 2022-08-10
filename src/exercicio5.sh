#!/bin/bash

<<com

Exercicio 5 - Pedindo senha ao usuarii

1- De boas vindas ao usuário.
2- Pede senha ao usuário.
3- Com a senha correta ele executa o comando
    "Senha Correta"
4- Caso contrario o usuario tenta novamente awm sair do script
5- São 5 tentativas, e depois mostra " tentativas esgotadas e sai

com

#  1- Boas Vindas;

echo "Bem vindo ao exercício 5"
echo
echo

SENHA=""
TENTATIVAS=0

while [ "$SENHA" != "123" ]; do
    echo "Favor digitar a senha:"
    read SENHA
    ((TENTATIVAS++))
    if [ $TENTATIVAS -eq 5 ]; then
        echo "Tentativas esgotadas"
        exit
    fi
done
echo "Senha correta"
exit


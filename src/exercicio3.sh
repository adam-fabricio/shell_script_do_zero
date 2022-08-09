#!/bin/bash

<<com

Exercicio 3 - Lógico dos PC1 e PC2.

PC1 -> 5
PC2 -> 10

Perguntar quais PC's estão ligado e imprimir a soma do valor.
Não utilizar soma do sistema usar if's

Incrementos
    Se digitar ligado ou desligado errado, avisar o usuário e sair
    Se o usuário digitar desligado para os dois, retornar 0 valor de zero

com

echo "Bem vindo ao exercício 3."
echo
echo

echo "Digite o estado do PC1. (ligado/desligado)"
read PC1

#  Incremento 1
if [ "$PC1" != "ligado" -a "$PC1" != "desligado" ]; then
    echo "Digitado valor incorreto"
    exit
fi

echo "Digite o estado do PC2. (ligado/desligado)"
read PC2 

#  incremento 1

if [ "$PC2" != "ligado" -a "$PC2" != "desligado" ]; then
    echo "Digitado valor incorreto"
    exit
fi


if [ "$PC1" = "ligado" -a "$PC2" = "ligado" ]; then
    echo "15"

elif [ "$PC1" = "ligado" -a "$PC2" = "desligado" ]; then
    echo "5"

elif [ "$PC1" = "desligado" -a "$PC2" = "ligado" ]; then
    echo "10"

#  incremento 2
elif [ "$PC1" = "desligado" -a "$PC2" = "desligado" ]; then
    echo "0"

fi

exit



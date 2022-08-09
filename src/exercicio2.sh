#!/bin/bash

<<com

Exercicio 2:
    Ferrari e Lamborghini   -> Classe A
    Celta                   -> Classe B
    Palio e Uno             -> Classe C

A função do script é informar a classe do carro conforme pedido pelo usuario

com

#  Informar os carros disponiveis ao usuário.
echo "Exercício 2"
echo
echo 

echo "Carros disponiveis para consulta."
echo
echo "Ferrari, Lamborghini, Celta, Palio e Uno"

#  Pede ao usuário que digite qual carro deseja ver a classe
echo
echo "Digite o carro que deseja consultar:"
read CARRO

#  Mostra a classe do carro e sai

if [ "$CARRO" = "Ferrari" -o "$CARRO" = "Lamborghini" ]; then
    echo "CLASSE A"
elif [ "$CARRO" = "Celta" ]; then 
    echo "CLASSE B"
elif [ "$CARRO" = "Palio" -o "$CARRO" = "Uno" ]; then
    echo "CLASSE C"
else
    echo "Carro não localizado"
fi

exit


#!/bin/bash

<<com

Exercicio 6 - Pequeno desafio de logica

A Variavel recebe um número digitado pelo usuario

São 3 rodadas ao total, em cada uma delas o  script multiplica o número dado
pelo usuario com o numero indicado abaixo.

Rodada 1 -> 10
Rodada 2 -> 20
Rodada 3 -> 30

com


echo "Bem vindo ao exercicio 6"
echo

echo "Por favor digite o número a ser processado:"
read NUMERO

for ((rodada=1;rodada<4;rodada++)); do
    case $rodada in
        
        1)
            echo "Rodada $rodada - $NUMERO multiplicado por 10 é igual a  $(($rodada * 10 *  $NUMERO))";;
        2)
            echo "Rodada $rodada - $NUMERO multiplicado por 10 é igual a  $(($rodada * 10 *  $NUMERO))";;
        3)            
            echo "Rodada $rodada - $NUMERO multiplicado por 10 é igual a  $(($rodada * 10 *  $NUMERO))";;
    esac
done
exit


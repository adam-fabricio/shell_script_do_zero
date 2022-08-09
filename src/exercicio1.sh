#!/bin/bash

<<com

Script:
        Temos 3 médicos, cada um atende num turno diferente, o usário informa
    qual turno deseja se consultar e o programa mostra o nome do médico do
    turno escolhido, só isso!

com

#  1) Mensagem de Boas Vindas.

echo "Bem vindo ao agendador de consulta!"
echo
echo

#  2) Pede para o usuário escolha qual turno que deseja se consultar

echo "Favor informar o turno que deseja se consultar. (MANHA/TARDE/NOITE)"
read TURNO

#  3) Mostra texto neste molde: Médico TAL é o único a atender no turno TAL.


if [ "$TURNO" = "MANHA" ]; then
    MEDICO=$"JOAO"
elif [ "$TURNO" = "TARDE" ]; then
    MEDICO=$"MARIA"
elif [ "$TURNO" = "NOITE" ]; then
    MEDICO=$"MARIO"
else
    echo "Turno não valido entre em contato novamente."
    exit
    fi


echo "Médico $MEDICO é o único a atender no turno $TURNO."

#  4) Dorme por 2 segundos

sleep 2

#  5) Informa que a consulta está marcada

echo
echo "A consulta está marcada."
echo

#  6) O programa dorme por mais dois segundos e sai.

sleep 4

exit

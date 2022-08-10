#!/bin/bash

#  Exercicio 4 - Script Remoto

<<com

O script rodará uma vez por minuto
A cada rodada ele le o arquivo comando
No arquivo comando escrevemos o comando desejado
Ele executa o comando digitado
E limpa o arquivo texto

Avisos
    Zere ou crie o arquivo "comadno" usando echo "" > $HOME/comando (fora do loop)
    Voce deverá usar um certo recurso para o script não ficar agarrado no comando 
    Use -> echo $loop dentro do for, senão vai parecer que deu pau
    Na construção do script diminua o tempo de loop para fazer os testes

Incremento
    Se escrever - vivo? -> deve responder -> Sim vivo, esperando comando.
com

echo "Bem vindo ao exercicio 4"


#  Exercício 4

echo "" > exercicio4_comando
echo "" > exercicio4_aviso

for ((loop=1;loop>0;loop++)); do
    echo "$loop"
    
    COMANDO=$(cat exercicio4_comando) 
    
    #  Caso tenha comando no arquivo execute
    if [ -n "$COMANDO" ]; then
        
        # Incremento
        if [ "$COMANDO" = "vivo?" ]; then
            echo "Sim vivo, esperando comando." >> exercicio4_aviso
        elif [ "$COMANDO" = "sair" ]; then
            exit

        else
            #  Execução do comando
            echo $($COMANDO)&

            #  apagando o arquivo de comando

            #  escrevendo no arquivo de aviso que o comando foi escrito
            echo "executei $COMANDO no loop $loop" >> exercicio4_aviso
            
        fi

        
        echo "" > exercicio4_comando
        echo "executei $COMANDO no loop $loop"
    fi
    sleep 10
done

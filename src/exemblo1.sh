#!/bin/bash

echo "Bem Vindo!"                               #  Mostra a frase na tela
echo                                            #  Pula linha
echo                                            #  Pula linha

sleep 2                                         #  Aguarda 2 segundos

echo "Por favor digita a senha:"                #  Imprimi mensagem na tela
read SENHA                                      #  Le o teclado.

touch log                                       #  Cria um arquivo de log

apt update&                                     #  Executa comando em segundo plano

echo "Senha digitada corretamente." >> log      #  Escreve no arquivo de log

echo "Preparando para sair." >> log             #  Escreve no arquivo de log.

exit

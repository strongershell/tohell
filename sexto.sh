#!/bin/bash
#
# sexto.sh - Nosso Sexto Programa em Shell - Laço de Repetição while
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa irá verificar o valor da variavel NUMERO, enquanto o valor da variável for menor
# que 10, ele ira mostrar a mensagem na tela que o valor eh menor que 10 e mostrara o valor da 
# variavel, quando o valor atingir 10 o programa será finalizado


# Exemplo de exeção:
#
# $ ./sexto.sh
# O valor da Variavel é 0, que é  menor que 10. 
# O valor da Variavel é 1, que é  menor que 10. 
#
# Histório de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem Vindo ao Programa de Numeros"
echo

while [ $NUMERO -lt "10" ]; do
	source /root/doshelltohell/terceiro.sh
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0

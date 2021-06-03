#!/bin/bash
#
# terceiro.sh - Nosso Terceiro Programa em Shell - Condicional if then else
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variavel $1 e ira
# comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado
# o segredo na tela, se não for igual, ira mostrar um erro.
#
# Exemplo de exeção:
#
# $ ./terceiro.sh utah
# Meus Parabéns voce acertou o segredo. voce esta na melhor em Linux do Brasil
# $ ./terceiro.sh blue
# ERROU. Esta perdendo tempo na blue
#
# Histório de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo 
echo "Bem vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabés, você acertou o segredo. Voce está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo na $1"
	echo
fi

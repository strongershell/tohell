#!/bin/bash
#
# quarto.sh - Nosso Quarto Programa em Shell - Condicional if then else
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa ira capturar o valor digitado pelo usuario e ira armazenar na variavel $DIGITADO e 
# comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado
# o segredo na tela, se não for igual, ira mostrar um erro.
#
# Exemplo de exeção:
#
# $ ./quarto.sh
# Digite o Segredo:
# utah
# Meus Parabéns voce acertou o segredo. voce esta na melhor em Linux do Brasil
# $ ./quarto.sh
# Digite o Segredo:
# blue
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
echo "Por favor, digite o segredo:"
# read ira ler o que o usuario digitou e armazenara na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabéns, você acertou o segredo. Voce está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo na $DIGITADO"
	echo
fi

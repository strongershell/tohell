#!/bin/bash

# script01.sh - Emulação do Comando seq em Bash
# 
# O comando seq recebe  dois numeros e mostra na saida padrao todos os numeros.
# existentes entre eles, numa sequencia pronta para ser usada pelo comando for . Caso omitido o 
# numero inicial , é utilizado 1.
# 

O=+ 
# Declara o valor da variavel O sendo + (soma)
A=1 
# Declara o valor da variavel A igual a 1
Z=${1:-1}
# Caso o parametro não seja declarado a variavel Z tera o mesmo valor do paramentro informado ($1)


[ "$2" ] && { 
	A=$1
       	Z=$2 
} 
# Se o segundo parametro for informado $2 a variavel A recebera o primeiro parametro $1 e a variavel Z o segundo parametro $2

[ $A -gt $Z ] && O=-
# Se o valor da variavel A for maior que o valor da variavel Z a ariavel O será declarada com o sinal de "-" (subtração)


while [ $Z -ne $A ]; do 
	echo $A
	eval "A=\$((A$O 1))"
done  
# Enquanto o valor da Variavel Z não for igual ao valor da variavel A, a será mostrado o valor da variavel A na tela, será utilizado o eval para "concatenar" todos os valores e a variavel A sera definida como sendo A - 1 = valor

echo $A
# Mostra o valor de A

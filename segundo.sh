#!/bin/bash
#
# segundo.sh - Nosso Sewgundo Programa em Shell - Variaveis de Controle Internas do Shell
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa ira mostrar as principais variaveis de controles internas do shell, que poderão ser 
# usadas por outros programas a fim de obtermos alguma informação.
#
# Exemplo de exeção:
#
# $ ./segundo.sh linux
# O Valor da Variavel $1 é linux
# $ ./segundo.sh linux windows
# O Valor da Variavel $1 é linux
# O Valor da Variavel $2 é windows
#
# Histório de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL

echo "Bem Vindo as Variaveis de Controle Internas do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depois do script, que foi: $1"
echo
echo "A variavel \$2 armazena o segundo parametro passado depois do script, que foi: $2"
echo
echo "A variavel \$3 armazena o terceiro parametro passado depois do script, que foi: $3"
echo 
echo "A variavel \$0 armazena o comando que foi executado| nome do programa, que foi: $0"
echo 
echo "A variavel \$# armazena o numero de Parametros que foram passados, que foram: $#"
echo
echo "A variavel \$\$ ou \$@ armazena o numero PID do processo gerado na execução do programa, que foi: $$"
echo
echo "A variavel \$? armazena o valor de retorno do ultimo comando|programa executado, que foi: $?"
echo 



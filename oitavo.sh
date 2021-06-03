#!/bin/bash
#
# oitavo.sh - Nosso Oitavo Programa em Shell - Laço for
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa mostrar uma mensagem na tela para cada aquivo .conf encontrado no diretorio /etc


# Exemplo de exeção:
#
# $ ./oitavo.sh
# O arquivo /etc/xyz.conf foi encontrado no diretório /etc.
#
# Histório de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"

echo
echo "Bem Vindo ao Programa de Listagem de Confs"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretorio /etc/."
done


exit 0

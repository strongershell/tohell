#!/bin/bash
#
# quinto.sh - Nosso Quinto Programa em Shell - Condicional case
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa ira capturar o primeiro parametro passado depois do programa e ira  armazenar na 
# variavel $1, caso o valor seja start, executar o trecho de comandos do start, caso seja stop
# executara o trecho do comando stop, case seja status executar o trecho status e caso não seja 
# nenhum dos valores acima irá mostra a mensagem para usar os valores start, stop, status.
#
# Exemplo de exeção:
#
# $ ./quinto.sh start
# Bem vindo ao Programa Stronger.
# Iniciando o programam. 
# ...
# ......
# ............
# ..................
# ........................
# Programa iniciado com Sucesso. 
#
# Histório de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL


PID="/tmp/stronger.pid"

echo 
echo "Bem vindo ao Stronger!"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger"
		echo "......"
		sleep 2s
		echo "..............."
		sleep 2s
		echo "....................."
		sleep 2s
		echo "..........................."
		touch $PID
		echo "Programa Stronger Iniciado com Sucesso"
		;;
	stop)
		echo
		echo "Parando o programa Stronger"
		echo "......"
		sleep 2s
		echo "..............."
		sleep 2s
		echo "....................."
		sleep 2s
		echo "..........................."
		rm $PID
		echo "Programa Stronger Parado com Sucesso"
		;;
	status)
		echo
		echo "Verificado o status do Programa Stronger"
		echo
		if [ -f "$PID" ]; then
			echo "O programa Stronger esta em execução"
		else
			echo "O programa Stronher esta parado"
		fi

		;;
	*)
		echo "Por favor Digite ./quinto start | stop | status"
		;;
esac

exit 0
		


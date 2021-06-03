#!/bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Script de Backup Completo.
#
# Homepage: http://www.utah.com.br
# Autor: Fabio Pires <fpires@utah.com.br>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# -----------------------------------------------------
#
# Este programa sera usado para realizr um backup full de arquivos localizados em um servidor onde 
# teremos que copiar a pasta /srv/samba

# Exemplo de execução:
#
# $ ./decimo.sh
#
# Histórico de Versões
#
# Versão: 1.0 
#
# COPYRIGHT: Este programa é GPL

# BKPDIR - Local onde será armazenado os arquivos de backup.
BKPDIR="/srv/backup/"
# FILEDIR - Local onde estão os arquivos de origem, que faremos backup.
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="services@utah.com.br"
SENDUSER="root@utah.local"

echo -e "\n"
echo "Iniciando o Script de Backup"
echo -e "\n"

verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi
}

mail() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Segue"
}

mail_err() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Erro no Backup" -a $ERRORLOG -m "Segue"
}


rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
verificar


exit 0 

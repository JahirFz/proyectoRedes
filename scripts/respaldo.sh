#!/bin/bash

FECHA=$(date +%Y-%m-%d_%H-%M-%S)
ORIGEN="/datos"
DESTINO="/respaldos"
LOG="/logs/respaldo_local.log"

mkdir -p $DESTINO

tar -czf $DESTINO/respaldo_$FECHA.tar.gz $ORIGEN 2>> $LOG

echo "[$FECHA] Respaldo local creado en $DESTINO/respaldo_$FECHA.tar.gz" >> $LOG

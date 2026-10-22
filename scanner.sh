#!/bin/bash
# Recon Toolkit v0.1 - Escaneo rápido de hosts activos
TARGET=$1
if [ -z "$TARGET" ]; then
    echo "Uso: ./scanner.sh <IP_o_Rango>"
    exit 1
fi
echo "[*] Escaneando objetivo: $TARGET..."
nmap -sn "$TARGET" -oN escaneo_resultado.log

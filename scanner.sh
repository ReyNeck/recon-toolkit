#!/bin/bash
# Recon Toolkit v0.2 - Escaneo de hosts y puertos críticos
TARGET=$1
PORTS="22,80,443"

if [ -z "$TARGET" ]; then
    echo "Uso: ./scanner.sh <IP_o_Rango>"
    exit 1
fi

echo "[*] Iniciando auditoría sobre: $TARGET (Puertos: $PORTS)..."
nmap -p "$PORTS" --open "$TARGET" -oN escaneo_resultado.log
echo "[+] Escaneo finalizado el $(date)"

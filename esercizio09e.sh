#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/log/server.log
#
#   1. Usa grep -E per trovare tutte le righe che contengono
#      un indirizzo IP (es: "192.168.1."100)
#
#   2. Usa grep -E per trovare le righe che contengono
#      [ERROR] oppure [WARNING]
#
#   3. Usa grep -E -c per contare quante righe contengono
#      un orario nel formato HH:MM:SS
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
grep -E "192" ambiente/log/server.log
grep -E "ERROR|WARNING" ambiente/log/server.log


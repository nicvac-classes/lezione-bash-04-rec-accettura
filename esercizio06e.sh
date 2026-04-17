#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 6
# Pipeline e grep
# ============================================================
# OBIETTIVO:
#   Analizza il file ambiente/log/server.log:
#   1. Mostra tutte le righe che contengono [INFO]
#   2. Conta il totale delle righe del file
#   3. Mostra le righe che NON contengono [INFO]
#      (usa grep -v)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
grep -F [INFO] ambiente/log/server.log
wc -l ambiente/log/server.log
grep -v [INFO] ambiente/log/server.log

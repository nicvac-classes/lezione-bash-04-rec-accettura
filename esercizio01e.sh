#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 1
# Navigazione e directory
# ============================================================
# OBIETTIVO:
#   1. Entra nella cartella ambiente/archivio/contratti
#      usando un path relativo
#   2. Verifica il percorso con pwd
#   3. Spostati in ambiente/log usando .. e path relativo
#   4. Verifica la nuova posizione
#   5. Torna alla directory precedente con un solo comando
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
cd ambiente/archivio/contratti
pwd
cd ../..
cd log
pwd
cd -


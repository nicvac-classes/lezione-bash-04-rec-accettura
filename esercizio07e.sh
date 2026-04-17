#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 7
# find e sed
# ============================================================
# OBIETTIVO:
#   1. Trova tutti i file .html dentro ambiente/progetti/
#   2. Nel file ambiente/progetti/webapp/src/app.js,
#      sostituisci "1.0" con "2.0" in tutte le occorrenze
#      (prima senza -i per verificare, poi con -i per applicare)
#   3. Verifica la modifica con cat
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
ls ambiente/progetti/*.html
cp "2.0" ambiente/progetti/*.html >> 3.0 ls ambiente/progetti/*.html
cat ls ambiente/progetti/*.html


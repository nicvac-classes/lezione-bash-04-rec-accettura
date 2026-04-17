#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 3
# Permessi
# ============================================================
# OBIETTIVO:
#   1. Crea un nuovo file ambiente/sandbox/mio_script.sh
#      con il contenuto: echo "Il mio script funziona!"
#      (usa echo e redirect >)
#   2. Verifica i permessi attuali con ls -l
#   3. Imposta i permessi a rwxr--r-- con chmod simbolico
#   4. Verifica i nuovi permessi
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
echo "Il mio script funziona!" > ambiente/sandbox/mio_script.sh
ls -l ambiente/sandbox/mio_script.sh
chmod u+x ambiente/sandbox/mio_script.sh
chmod o=-w ambiente/sandbox/mio_script.sh
chmod g=-w ambiente/sandbox/mio_script.sh
ls -l ambiente/sandbox/mio_script.sh

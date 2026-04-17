#!/bin/bash

# =============================================================================
# Script di setup per Verifica Bash
# Esegui questo script per creare l'ambiente di lavoro
# =============================================================================

echo "Creazione ambiente di verifica..."

# Pulizia ambiente precedente (solo l'ambiente, non i file esercizio gia' svolti)
rm -rf ambiente

# =============================================================================
# Struttura directory
# =============================================================================

mkdir -p ambiente/documenti/report/2023
mkdir -p ambiente/documenti/report/2024
mkdir -p ambiente/documenti/lettere
mkdir -p ambiente/immagini/vacanze
mkdir -p ambiente/immagini/lavoro
mkdir -p ambiente/progetti/webapp/src
mkdir -p ambiente/progetti/webapp/css
mkdir -p ambiente/progetti/app/src
mkdir -p ambiente/archivio/fatture/2023
mkdir -p ambiente/archivio/fatture/2024
mkdir -p ambiente/archivio/contratti
mkdir -p ambiente/log
mkdir -p ambiente/dati
mkdir -p ambiente/sandbox

# =============================================================================
# File documenti
# =============================================================================

cat > ambiente/documenti/report/2023/vendite_q1.txt << 'EOF'
Rapporto Vendite Q1 2023
========================
Gennaio: 15000 euro
Febbraio: 18200 euro
Marzo: 21500 euro
Totale: 54700 euro
EOF

cat > ambiente/documenti/report/2023/vendite_q2.txt << 'EOF'
Rapporto Vendite Q2 2023
========================
Aprile: 19800 euro
Maggio: 22100 euro
Giugno: 25300 euro
Totale: 67200 euro
EOF

cat > ambiente/documenti/report/2024/vendite_q1.txt << 'EOF'
Rapporto Vendite Q1 2024
========================
Gennaio: 17500 euro
Febbraio: 20100 euro
Marzo: 23800 euro
Totale: 61400 euro
EOF

cat > ambiente/documenti/lettere/lettera_clienti.txt << 'EOF'
Gentili Clienti,

Vi informiamo che dal 1 gennaio 2024 i nostri uffici
saranno aperti con il seguente orario:
Lunedi-Venerdi: 9:00 - 18:00
Sabato: 9:00 - 13:00

Cordiali saluti,
L'Amministrazione
EOF

cat > ambiente/documenti/lettere/lettera_fornitori.txt << 'EOF'
Spettabili Fornitori,

Con la presente vi comunichiamo il nuovo listino prezzi
valido dal prossimo trimestre.
Allegate trovate le tabelle aggiornate.

Distinti saluti,
Ufficio Acquisti
EOF

cat > ambiente/documenti/note.txt << 'EOF'
Note interne - Da rivedere
- Aggiornare sito web entro marzo
- Contattare nuovo fornitore
- Riunione mensile fissata per il 15
EOF

# =============================================================================
# File log
# =============================================================================

cat > ambiente/log/server.log << 'EOF'
2024-03-01 08:00:01 [INFO] Server avviato sulla porta 8080
2024-03-01 08:00:02 [INFO] Connessione al database stabilita
2024-03-01 08:05:15 [INFO] Richiesta GET /index.html - 200 OK
2024-03-01 08:07:22 [INFO] Richiesta GET /login - 200 OK
2024-03-01 08:10:30 [WARNING] Tentativo di accesso non autorizzato da 192.168.1.100
2024-03-01 08:10:31 [WARNING] Tentativo di accesso non autorizzato da 192.168.1.100
2024-03-01 08:15:44 [INFO] Utente mario.rossi autenticato con successo
2024-03-01 08:20:45 [ERROR] Connessione al database persa
2024-03-01 08:20:46 [ERROR] Timeout nella riconnessione al database
2024-03-01 08:21:10 [INFO] Riconnessione al database riuscita
2024-03-01 08:30:00 [INFO] Richiesta POST /api/ordini - 201 Created
2024-03-01 08:45:10 [WARNING] Spazio su disco inferiore al 20%
2024-03-01 09:00:00 [INFO] Backup automatico avviato
2024-03-01 09:15:03 [ERROR] File non trovato: /images/logo.png - 404
2024-03-01 09:30:00 [INFO] Backup completato con successo
2024-03-01 09:45:00 [INFO] Richiesta GET /dashboard - 200 OK
2024-03-01 10:00:00 [WARNING] Carico CPU superiore all 80%
2024-03-01 10:00:01 [INFO] Connessione al database chiusa
2024-03-01 10:00:02 [INFO] Server arrestato correttamente
EOF

cat > ambiente/log/accessi.log << 'EOF'
2024-03-01 08:10:30 mario.rossi login_fallito 192.168.1.100
2024-03-01 08:10:31 mario.rossi login_fallito 192.168.1.100
2024-03-01 08:15:44 mario.rossi login_ok 192.168.1.100
2024-03-01 08:20:00 anna.bianchi login_ok 10.0.0.5
2024-03-01 08:35:00 guest login_fallito 192.168.1.50
2024-03-01 09:00:00 luca.verdi login_ok 10.0.0.8
2024-03-01 09:10:00 sara.neri login_ok 10.0.0.9
2024-03-01 09:30:00 guest login_fallito 192.168.1.50
2024-03-01 10:00:00 mario.rossi logout 192.168.1.100
2024-03-01 10:05:00 anna.bianchi logout 10.0.0.5
EOF

# =============================================================================
# File dati CSV
# =============================================================================

cat > ambiente/dati/studenti.csv << 'EOF'
id,cognome,nome,classe,media
1001,Rossi,Mario,4A,7.5
1002,Bianchi,Laura,4A,8.2
1003,Verdi,Paolo,4B,6.8
1004,Neri,Anna,4B,9.1
1005,Ferrari,Luca,4A,7.0
1006,Romano,Sara,4B,7.3
1007,Colombo,Marco,4A,8.5
1008,Ricci,Giulia,4B,6.3
EOF

cat > ambiente/dati/prodotti.csv << 'EOF'
codice,nome,categoria,prezzo,quantita
P001,Tastiera USB,Periferiche,25.90,150
P002,Mouse wireless,Periferiche,18.50,200
P003,Monitor 24",Monitor,189.00,45
P004,Cavo HDMI,Accessori,8.90,500
P005,Hub USB,Accessori,15.00,120
P006,Webcam HD,Periferiche,45.00,80
P007,Monitor 27",Monitor,249.00,30
P008,Tappetino mouse,Accessori,6.50,350
EOF

# =============================================================================
# File archivio
# =============================================================================

echo "Fattura 001 - Cliente Alpha - 1200.00 euro" > ambiente/archivio/fatture/2023/fattura_001.txt
echo "Fattura 002 - Cliente Beta - 850.50 euro" > ambiente/archivio/fatture/2023/fattura_002.txt
echo "Fattura 003 - Cliente Gamma - 3400.00 euro" > ambiente/archivio/fatture/2023/fattura_003.txt
echo "Fattura 001 - Cliente Alpha - 1500.00 euro" > ambiente/archivio/fatture/2024/fattura_001.txt
echo "Fattura 002 - Cliente Delta - 920.00 euro" > ambiente/archivio/fatture/2024/fattura_002.txt

echo "Contratto fornitura materiali - Scadenza 31/12/2024" > ambiente/archivio/contratti/contratto_fornitore_a.txt
echo "Contratto manutenzione server - Scadenza 30/06/2024" > ambiente/archivio/contratti/contratto_fornitore_b.txt

# =============================================================================
# File immagini (placeholder)
# =============================================================================

echo "foto_estate_2023" > ambiente/immagini/vacanze/foto_estate_2023.jpg
echo "foto_inverno_2023" > ambiente/immagini/vacanze/foto_inverno_2023.jpg
echo "foto_estate_2024" > ambiente/immagini/vacanze/foto_estate_2024.jpg
echo "foto_conferenza" > ambiente/immagini/lavoro/foto_conferenza.jpg
echo "foto_team" > ambiente/immagini/lavoro/foto_team.jpg

# =============================================================================
# File progetto webapp
# =============================================================================

cat > ambiente/progetti/webapp/src/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head><title>WebApp v1.0</title></head>
<body>
<h1>Benvenuto</h1>
</body>
</html>
EOF

cat > ambiente/progetti/webapp/src/app.js << 'EOF'
// Applicazione principale
const VERSION = "1.0";

function init() {
    console.log("Avvio applicazione versione " + VERSION);
}

function caricaDati() {
    // TODO: implementare caricamento dati
    return [];
}
EOF

cat > ambiente/progetti/webapp/css/stile.css << 'EOF'
/* Foglio di stile principale */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

h1 {
    color: #333333;
    /* TODO: aggiungere animazione */
}
EOF

cat > ambiente/progetti/app/src/Main.java << 'EOF'
// Applicazione Java
public class Main {
    public static void main(String[] args) {
        System.out.println("Avvio...");
        // TODO: implementare logica principale
    }
}
EOF

# =============================================================================
# Permessi speciali per esercizi chmod
# =============================================================================

cat > ambiente/sandbox/script_test.sh << 'EOF'
#!/bin/bash
echo "Script eseguito con successo!"
EOF
chmod 644 ambiente/sandbox/script_test.sh

cat > ambiente/sandbox/dati_privati.txt << 'EOF'
Questi dati sono riservati.
Solo il proprietario puo accedervi.
EOF
chmod 600 ambiente/sandbox/dati_privati.txt

# =============================================================================
# Generazione file esercizi
# =============================================================================

echo ""
echo "Generazione file esercizi (solo quelli non ancora svolti)..."

# Funzione: crea il file esercizio solo se non esiste gia'
# Uso: crea_esercizio <nomefile> << 'ESERCIZIO' ... ESERCIZIO
crea_esercizio() {
    local file="$1"
    if [ -f "$file" ]; then
        echo "  [skip] $file (gia' presente)"
        cat > /dev/null  # consuma lo stdin per non bloccare
    else
        cat > "$file"
        chmod +x "$file"
        echo "  [crea] $file"
    fi
}

# --- TRACCIA A ---

crea_esercizio esercizio01a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 1
# Navigazione e directory
# ============================================================
# OBIETTIVO:
#   1. Visualizza il percorso assoluto della directory corrente
#   2. Entra nella cartella ambiente/documenti/report/2023
#   3. Verifica di essere nella posizione giusta
#   4. Torna alla radice del repository con un solo comando usando ..
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio02a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 2
# Creazione struttura directory
# ============================================================
# OBIETTIVO:
#   Con UN SOLO comando mkdir, crea dentro ambiente/sandbox
#   questa struttura:
#
#   azienda/
#   ├── vendite/
#   │   ├── nord/
#   │   └── sud/
#   └── acquisti/
#       ├── nord/
#       └── sud/
#
#   Poi verifica il risultato con tree (o ls ricorsivo)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio03a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 3
# Permessi
# ============================================================
# OBIETTIVO:
#   Il file ambiente/sandbox/script_test.sh non e' eseguibile.
#   1. Verifica i permessi attuali con ls -l
#   2. Rendi il file eseguibile solo per il proprietario (u+x)
#   3. Verifica i nuovi permessi
#   4. Eseguilo con ./ambiente/sandbox/script_test.sh
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio04a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 4
# Copia e spostamento file
# ============================================================
# OBIETTIVO:
#   1. Copia il file ambiente/documenti/note.txt nella cartella
#      ambiente/archivio/ rinominandolo note_archivio.txt
#   2. Sposta tutti i file .txt dalla cartella
#      ambiente/documenti/lettere/ nella cartella ambiente/sandbox/
#   3. Verifica con ls che le operazioni siano riuscite
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio05a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 5
# Wildcard e redirect
# ============================================================
# OBIETTIVO:
#   1. Elenca tutti i file .jpg nella cartella ambiente/immagini/vacanze/
#   2. Salva l'elenco dei file .txt presenti in ambiente/documenti/
#      nel file ambiente/sandbox/elenco_txt.txt
#   3. Aggiungi allo stesso file l'elenco dei file in
#      ambiente/archivio/contratti/
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio06a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 6
# Pipeline e grep
# ============================================================
# OBIETTIVO:
#   Analizza il file ambiente/log/server.log:
#   1. Mostra solo le righe che contengono [ERROR]
#   2. Conta quante righe contengono [WARNING]
#   3. Salva tutte le righe [ERROR] e [WARNING] in
#      ambiente/sandbox/problemi.txt
#      (usa grep -E con alternativa | )
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio07a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 7
# find e grep avanzato
# ============================================================
# OBIETTIVO:
#   1. Trova tutti i file .txt dentro ambiente/ (ricorsivamente)
#   2. Cerca la parola "database" in tutti i file dentro ambiente/log/
#      mostrando il numero di riga
#   3. Trova tutti i file .java dentro ambiente/progetti/
#      e mostra quelli che contengono la parola TODO
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio08a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 8
# awk su CSV
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/studenti.csv
#   1. Stampa solo nome e cognome di tutti gli studenti
#      (senza intestazione)
#   2. Mostra solo gli studenti con media >= 8
#   3. Stampa gli studenti della classe 4A nel formato:
#      COGNOME Nome - media: X
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

# --- TRACCIA B ---

crea_esercizio esercizio01b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 1
# Navigazione e directory
# ============================================================
# OBIETTIVO:
#   1. Visualizza il percorso assoluto della directory corrente
#   2. Entra nella cartella ambiente/archivio/fatture/2024
#      usando un path relativo
#   3. Verifica di essere nella posizione giusta
#   4. Torna alla radice del repository con un solo comando usando ~
#      (poi torna indietro con cd -)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio02b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 2
# Creazione struttura directory
# ============================================================
# OBIETTIVO:
#   Con UN SOLO comando mkdir, crea dentro ambiente/sandbox
#   questa struttura:
#
#   scuola/
#   ├── classi/
#   │   ├── terza/
#   │   └── quarta/
#   └── docenti/
#       ├── terza/
#       └── quarta/
#
#   Poi verifica il risultato con tree (o ls ricorsivo)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio03b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 3
# Permessi
# ============================================================
# OBIETTIVO:
#   Il file ambiente/sandbox/dati_privati.txt ha permessi 600.
#   1. Verifica i permessi attuali con ls -l
#   2. Aggiungi il permesso di lettura per il gruppo (g+r)
#   3. Verifica i nuovi permessi
#   4. Rimuovi tutti i permessi agli "altri" (o=)
#   5. Verifica il risultato finale
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio04b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 4
# Copia e spostamento file
# ============================================================
# OBIETTIVO:
#   1. Copia l'intera cartella ambiente/documenti/report/
#      dentro ambiente/sandbox/ (copia ricorsiva)
#   2. Rinomina il file ambiente/documenti/note.txt
#      in ambiente/documenti/appunti.txt
#   3. Verifica con ls che le operazioni siano riuscite
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio05b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 5
# Wildcard e redirect
# ============================================================
# OBIETTIVO:
#   1. Elenca tutti i file .jpg nella cartella ambiente/immagini/lavoro/
#   2. Salva le prime 5 righe di ambiente/log/server.log
#      nel file ambiente/sandbox/estratto.txt
#   3. Aggiungi le ultime 3 righe dello stesso log
#      allo stesso file estratto.txt
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio06b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 6
# Pipeline e grep
# ============================================================
# OBIETTIVO:
#   Analizza il file ambiente/log/accessi.log:
#   1. Mostra solo le righe con login_fallito
#   2. Conta quanti login_ok ci sono
#   3. Estrai gli utenti distinti che hanno fatto login
#      (qualsiasi tipo), ordinali e rimuovi duplicati
#      (usa awk '{print $3}' per estrarre il nome utente)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio07b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 7
# find e grep avanzato
# ============================================================
# OBIETTIVO:
#   1. Trova tutti i file .jpg dentro ambiente/ (ricorsivamente)
#   2. Trova tutte le directory dentro ambiente/progetti/
#   3. Cerca la stringa "TODO" in tutti i file dentro
#      ambiente/progetti/ mostrando file e numero di riga
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio08b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 8
# awk su CSV
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/prodotti.csv
#   1. Stampa solo nome e prezzo di tutti i prodotti
#      (senza intestazione)
#   2. Mostra solo i prodotti della categoria Periferiche
#   3. Stampa i prodotti con prezzo superiore a 20 nel formato:
#      NOME - prezzo: X euro
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

# --- TRACCIA C ---

crea_esercizio esercizio01c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 1
# Navigazione e directory
# ============================================================
# OBIETTIVO:
#   1. Entra nella cartella ambiente/immagini/vacanze
#      usando un path assoluto
#   2. Verifica il percorso con pwd
#   3. Spostati in ambiente/immagini/lavoro usando un path relativo
#      (con ..)
#   4. Verifica la nuova posizione
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio02c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 2
# Creazione struttura directory
# ============================================================
# OBIETTIVO:
#   Con UN SOLO comando mkdir, crea dentro ambiente/sandbox
#   questa struttura:
#
#   negozio/
#   ├── abbigliamento/
#   │   ├── uomo/
#   │   └── donna/
#   └── elettronica/
#       ├── uomo/
#       └── donna/
#
#   Poi eliminala TUTTA con un solo comando rm
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio03c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 3
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



ESERCIZIO

crea_esercizio esercizio04c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 4
# Copia e spostamento file
# ============================================================
# OBIETTIVO:
#   1. Copia tutti i file .txt da ambiente/documenti/lettere/
#      nella cartella ambiente/sandbox/
#   2. Sposta il file ambiente/documenti/report/2023/vendite_q2.txt
#      nella cartella ambiente/archivio/ rinominandolo
#      report_vendite_q2_2023.txt
#   3. Verifica con ls che le operazioni siano riuscite
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio05c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 5
# Wildcard e redirect
# ============================================================
# OBIETTIVO:
#   1. Elenca tutti i file che contengono "2023" nel nome
#      dentro la cartella ambiente/immagini/
#   2. Crea il file ambiente/sandbox/report.txt con il contenuto:
#      "=== ELENCO FILE ==="  (prima riga)
#      poi aggiungi l'elenco di tutti i file in ambiente/archivio/fatture/2024/
#   3. Visualizza il file report.txt creato
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio06c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 6
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



ESERCIZIO

crea_esercizio esercizio07c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 7
# find e sed
# ============================================================
# OBIETTIVO:
#   1. Trova tutti i file .css dentro ambiente/progetti/
#   2. Nel file ambiente/progetti/webapp/css/stile.css,
#      sostituisci il colore "#333333" con "#000000"
#      (prima senza -i per verificare, poi con -i per applicare)
#   3. Verifica la modifica con cat
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio08c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 8
# awk su CSV
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/prodotti.csv
#   1. Stampa solo codice e nome di tutti i prodotti
#      (senza intestazione)
#   2. Mostra solo i prodotti della categoria Monitor
#   3. Stampa i prodotti con quantita superiore a 100 nel formato:
#      NOME (categoria): quantita pz
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

# --- TRACCIA D ---

crea_esercizio esercizio01d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 1
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



ESERCIZIO

crea_esercizio esercizio02d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 2
# Creazione e rimozione directory
# ============================================================
# OBIETTIVO:
#   Con UN SOLO comando mkdir, crea dentro ambiente/sandbox
#   questa struttura:
#
#   ospedale/
#   ├── reparti/
#   │   ├── cardiologia/
#   │   └── pediatria/
#   └── amministrazione/
#       ├── cardiologia/
#       └── pediatria/
#
#   Poi rimuovi SOLO la directory ambiente/sandbox/ospedale/reparti/pediatria
#   (directory vuota, usa rmdir)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio03d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 3
# Permessi
# ============================================================
# OBIETTIVO:
#   1. Verifica i permessi di ambiente/sandbox/dati_privati.txt
#   2. Aggiungi il permesso di esecuzione al proprietario (u+x)
#   3. Rimuovi il permesso di scrittura al proprietario (u-w)
#   4. Verifica i permessi finali: devono essere r-x------
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio04d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 4
# Copia, spostamento ed eliminazione
# ============================================================
# OBIETTIVO:
#   1. Copia il file ambiente/documenti/report/2024/vendite_q1.txt
#      nella cartella ambiente/sandbox/
#   2. Rinomina la copia in ambiente/sandbox/ come report_2024.txt
#   3. Elimina il file ambiente/documenti/note.txt con conferma (-i)
#      rispondendo y
#   4. Verifica con ls le operazioni svolte
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio05d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 5
# Wildcard e redirect
# ============================================================
# OBIETTIVO:
#   1. Elenca tutti i file con "2024" nel nome dentro ambiente/immagini/
#   2. Salva l'elenco di tutti i file .log in ambiente/log/
#      nel file ambiente/sandbox/elenco_log.txt
#   3. Aggiungi al file elenco_log.txt la scritta "Fine elenco"
#      usando echo e >>
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio06d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 6
# Pipeline e grep
# ============================================================
# OBIETTIVO:
#   Analizza il file ambiente/log/accessi.log:
#   1. Mostra tutte le righe con l'IP 192.168.1.50
#   2. Conta quante righe riguardano quell'IP
#   3. Salva in ambiente/sandbox/ip_sospetto.txt
#      tutte le righe relative a 192.168.1.50
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio07d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 7
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



ESERCIZIO

crea_esercizio esercizio08d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 8
# awk su CSV
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/studenti.csv
#   1. Stampa solo cognome e classe di tutti gli studenti
#      (senza intestazione)
#   2. Mostra solo gli studenti con media < 7
#   3. Stampa gli studenti della classe 4B nel formato:
#      Nome COGNOME - classe 4B
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio09a.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia A - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/log/server.log
#
#   1. Usa grep -E per trovare tutte le righe che contengono
#      un indirizzo IP (es: 192.168.1.100)
#
#   2. Usa grep -E per trovare le righe che contengono
#      [ERROR] oppure [WARNING]
#
#   3. Usa grep -E -c per contare quante righe contengono
#      un orario nel formato HH:MM:SS
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio09b.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/log/accessi.log
#
#   1. Usa grep -E per trovare le righe che iniziano con
#      una data nel formato AAAA-MM-GG
#
#   2. Usa grep -E per trovare le righe che contengono
#      login_ok oppure login_fallito, poi contale con grep -c
#
#   3. Usa grep -E -i per trovare le righe che contengono
#      "mario" oppure "anna" (case insensitive)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio09c.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia C - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sui file dentro ambiente/progetti/
#
#   1. Usa grep -rn -E per trovare in tutti i file di
#      ambiente/progetti/ le righe che contengono
#      una versione nel formato N.N (es: 1.0, 2.5)
#
#   2. Usa grep -r -E per trovare le righe che contengono
#      parole che iniziano con una lettera maiuscola
#      seguita da una o piu' lettere minuscole
#
#   3. Usa grep -r -l -E per trovare SOLO I NOMI dei file
#      che contengono la parola "TODO"
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio09d.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia D - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/studenti.csv
#
#   1. Usa grep -E per trovare le righe che contengono
#      un numero con decimale (la media, es: 7.5, 9.1)
#
#   2. Usa grep -E per trovare le righe degli studenti
#      della classe 4A oppure 4B
#
#   3. Usa grep -v -E per mostrare le righe degli studenti
#      con media inferiore a 8 (escludi chi ha 8 o 9)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

# --- TRACCIA E (mix da A, B, C, D) ---

crea_esercizio esercizio01e.sh << 'ESERCIZIO'
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



ESERCIZIO

crea_esercizio esercizio02e.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 2
# Creazione struttura directory
# ============================================================
# OBIETTIVO:
#   Con UN SOLO comando mkdir, crea dentro ambiente/sandbox
#   questa struttura:
#
#   scuola/
#   ├── classi/
#   │   ├── terza/
#   │   └── quarta/
#   └── docenti/
#       ├── terza/
#       └── quarta/
#
#   Poi verifica il risultato con tree (o ls ricorsivo)
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio03e.sh << 'ESERCIZIO'
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



ESERCIZIO

crea_esercizio esercizio04e.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 4
# Copia e spostamento file
# ============================================================
# OBIETTIVO:
#   1. Copia il file ambiente/documenti/note.txt nella cartella
#      ambiente/archivio/ rinominandolo note_archivio.txt
#   2. Sposta tutti i file .txt dalla cartella
#      ambiente/documenti/lettere/ nella cartella ambiente/sandbox/
#   3. Verifica con ls che le operazioni siano riuscite
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio05e.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 5
# Wildcard e redirect
# ============================================================
# OBIETTIVO:
#   1. Elenca tutti i file .jpg nella cartella ambiente/immagini/lavoro/
#   2. Salva le prime 5 righe di ambiente/log/server.log
#      nel file ambiente/sandbox/estratto.txt
#   3. Aggiungi le ultime 3 righe dello stesso log
#      allo stesso file estratto.txt
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio06e.sh << 'ESERCIZIO'
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



ESERCIZIO

crea_esercizio esercizio07e.sh << 'ESERCIZIO'
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



ESERCIZIO

crea_esercizio esercizio08e.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 8
# awk su CSV
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/dati/prodotti.csv
#   1. Stampa solo nome e prezzo di tutti i prodotti
#      (senza intestazione)
#   2. Mostra solo i prodotti della categoria Periferiche
#   3. Stampa i prodotti con prezzo superiore a 20 nel formato:
#      NOME - prezzo: X euro
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

crea_esercizio esercizio09e.sh << 'ESERCIZIO'
#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia E - Esercizio 9
# Espressioni regolari con grep -E
# ============================================================
# OBIETTIVO:
#   Lavora sul file ambiente/log/server.log
#
#   1. Usa grep -E per trovare tutte le righe che contengono
#      un indirizzo IP (es: 192.168.1.100)
#
#   2. Usa grep -E per trovare le righe che contengono
#      [ERROR] oppure [WARNING]
#
#   3. Usa grep -E -c per contare quante righe contengono
#      un orario nel formato HH:MM:SS
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------



ESERCIZIO

# =============================================================================
# Script traccia
# =============================================================================

cat > tracciaA.sh << 'SCRIPT'
#!/bin/bash
echo "Attivazione Traccia A..."
rm -f esercizio*b.sh esercizio*c.sh esercizio*d.sh esercizio*e.sh
echo "Pronti! Esercizi della Traccia A:"
ls esercizio*.sh
SCRIPT

cat > tracciaB.sh << 'SCRIPT'
#!/bin/bash
echo "Attivazione Traccia B..."
rm -f esercizio*a.sh esercizio*c.sh esercizio*d.sh esercizio*e.sh
echo "Pronti! Esercizi della Traccia B:"
ls esercizio*.sh
SCRIPT

cat > tracciaC.sh << 'SCRIPT'
#!/bin/bash
echo "Attivazione Traccia C..."
rm -f esercizio*a.sh esercizio*b.sh esercizio*d.sh esercizio*e.sh
echo "Pronti! Esercizi della Traccia C:"
ls esercizio*.sh
SCRIPT

cat > tracciaD.sh << 'SCRIPT'
#!/bin/bash
echo "Attivazione Traccia D..."
rm -f esercizio*a.sh esercizio*b.sh esercizio*c.sh esercizio*e.sh
echo "Pronti! Esercizi della Traccia D:"
ls esercizio*.sh
SCRIPT

cat > tracciaE.sh << 'SCRIPT'
#!/bin/bash
echo "Attivazione Traccia E..."
rm -f esercizio*a.sh esercizio*b.sh esercizio*c.sh esercizio*d.sh
echo "Pronti! Esercizi della Traccia E:"
ls esercizio*.sh
SCRIPT

# =============================================================================
# Imposta permessi eseguibili
# =============================================================================

chmod +x esercizio*.sh
chmod +x tracciaA.sh tracciaB.sh tracciaC.sh tracciaD.sh tracciaE.sh

echo ""
echo "Ambiente creato con successo!"
echo ""
echo "Struttura ambiente:"
tree ambiente 2>/dev/null || find ambiente -type f | head -30
echo ""
echo "File esercizi generati:"
ls esercizio*.sh
echo ""
echo "Attendi istruzioni del docente, poi esegui lo script della tua traccia:"
echo "  ./tracciaA.sh  ./tracciaB.sh  ./tracciaC.sh  ./tracciaD.sh  ./tracciaE.sh"

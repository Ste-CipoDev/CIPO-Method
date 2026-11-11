# CIPO-METHOD — Governance & Orchestrazione dei Progetti Agentici
### Standard Operativo per lo Sviluppo Software con Agenti AI Autonomi

[![Antigravity](https://img.shields.io/badge/Google_Antigravity-2.0-E50914?style=flat-square)](https://cipo.dev)
[![Status](https://img.shields.io/badge/Status-Production--Ready-00C853?style=flat-square)](https://cipo.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)
[![Author](https://img.shields.io/badge/Author-Stefano_Cipollitti_(cipo.dev)-white?style=flat-square)](https://cipo.dev)

> **"I token e la finestra di contesto della chat sono volatili ed effimeri. Il filesystem locale è eterno e deterministico."**

`cipo-method` è la skill ufficiale per **Google Antigravity** e agenti AI di coding che codifica e automatizza il **Metodo CIPO.DEV**: un framework operativo di governance, memoria persistente su filesystem e gestione maniacale del contesto, progettato per eliminare allucinazioni, regressioni di codice e spreco di token durante lo sviluppo con agenti autonomi.

---

## 🛡️ Il Duo Operativo CIPO.DEV

Nell'ecosistema CIPO.DEV, lo sviluppo agentico si basa sul principio di singola responsabilità (SRP) applicato alla cooperazione con l'Intelligenza Artificiale:

| Ruolo Agente | Skill Custom | Compito Operativo |
|---|---|---|
| **Senior Software Engineer** | [`cipo-dev`](https://github.com/Ste-CipoDev/CIPO-Dev) | **Come si scrive il codice (C.I.P.O.):** impone la Scala del Pragmatismo Operativo, YAGNI radicale, divieto di astrazioni premature (niente interfacce a implementazione singola o factory fittizie), transazioni atomiche ACID, tipi esatti (`decimal`) e commit rigorosamente in italiano. |
| **Project Orchestrator** | **`cipo-method`** *(Questa skill)* | **Come si governa il progetto:** esige il PRD preventivo obbligatorio prima di qualsiasi codice, governa i 3 piani di memoria su filesystem, traccia in tempo reale `STATUS.md` e `MEMORY.md`, isola le chat e configura la dieta delle skill (`.agents/skills.json`) per abbattere i costi di contesto. |

---

## 🚀 Installazione Rapida

Per installare la skill nel tuo ambiente locale di **Google Antigravity** (o compatibili con `~/.gemini/config/skills/`):

```bash
git clone https://github.com/Ste-CipoDev/CIPO-Method.git ~/.gemini/config/skills/cipo-method
```

Oppure in ambiente Windows (PowerShell):

```powershell
git clone https://github.com/Ste-CipoDev/CIPO-Method.git "$HOME\.gemini\config\skills\cipo-method"
```

Una volta clonata, la skill viene rilevata automaticamente dall'agente all'avvio o quando vengono affrontate attività di governance, pianificazione, gestione memoria o avvio progetto.

---

## 🏛️ I Pilastri del Metodo

### 1. PRD Preventivo Obbligatorio
Nessuna riga di codice senza una specifica validata. La skill impedisce all'agente di saltare al codice e impone la redazione preventiva delle 6 sezioni non negoziabili:
1. **Problema** (perché intervenire adesso)
2. **Success Criteria** (come verifichiamo che ha funzionato)
3. **Scope In/Out** (cosa è esplicitamente escluso per evitare lo scope creep)
4. **Vincoli** (tecnici, runtime, architetturali)
5. **Piano Operativo** (fasi atomiche sequenziali)
6. **Open Questions** (punti oscuri che rischiano di bloccare)

### 2. La Gerarchia della Memoria su 3 Piani
Il contesto volatile della chat non è un archivio. La memoria vive sul filesystem:
- **Piano 1 — Memoria Generale (`_system/memory/`):** Fatti trasversali stabili riusabili tra progetti (`people.md`, `terminology.md`).
- **Piano 2 — Memoria di Progetto (`PROGETTI/<progetto>/MEMORY.md`):** Il **PERCHÉ**. Log cronologico immutabile (`## AAAA-MM-GG: titolo`) con decisioni architetturali, vincoli scoperti e bug risolti alla radice. *Divieto assoluto di to-do list qui dentro.*
- **Piano 3 — Stato di Progetto (`PROGETTI/<progetto>/STATUS.md`):** Il **COSA**. Fotografia istantanea dello stato attuale, fase corrente, riga singola del "Prossimo passo immediato", tabella dei task e blocchi. Si riscrive costantemente e si compatta sotto le 300 righe.

### 3. Protocollo di Tracciamento Automatico ad Ogni Modifica
Zero debito di contesto. L'agente aggiorna autonomamente `STATUS.md` e `MEMORY.md` contestualmente a ogni task completato, prima di chiudere il turno.

### 4. Isolamento Rigoroso delle Chat (Golden Rule)
**Una chat per ogni singolo progetto.** Per evitare l'inquinamento cognitivo (*context drift*) e il degrado prestazionale degli LLM, le sessioni non si mescolano mai. In caso di cambio progetto, l'agente esegue il salvataggio automatico su disco e invita formalmente ad aprire una nuova chat pulita.

### 5. Dieta delle Skill per Singolo Progetto (`.agents/skills.json`)
Caricare globalmente decine di skill irrilevanti (es. Unity 3D in un ERP web, o Supabase in un applicativo desktop .NET) spreca fino al 40% della finestra di contesto a ogni prompt. La skill configura l'isolamento locale di workspace:

```json
{
  "skills": {
    "include_only": [
      "cipo",
      "cipo-method",
      "systematic-debugging",
      "git-workflow-and-versioning"
    ],
    "exclude": [
      "unity-cli",
      "ui-uitk",
      "supabase",
      "docx-management"
    ]
  }
}
```

### 6. Control Room & WIP Limit = 2
Massimo due progetti contemporaneamente in stato Attivo. Tutti gli altri progetti risiedono nella sezione *Congelati a Carico Mentale Zero* con criterio di risveglio esplicito. Monitoraggio della freschezza con soglia di allineamento a 4 giorni.

### 7. Debugging Sistematico a 4 Fasi
Vietato il fixing a tentativi casuali o con patch speculative a valle:
1. **Cattura e Riproduzione** (dati certi, log e stack trace completi)
2. **Diagnosi alla Radice** (trovare il punto comune a monte)
3. **Ipotesi Verificabile** (esplicitare causa ed effetto atteso)
4. **Fix Chirurgico Minimalista** (il minimo codice necessario e test di regressione)

### 8. Version Control (Git) Rigoroso
Tutti i messaggi di commit sono rigorosamente scritti in **lingua italiana** seguendo lo standard Conventional Commits (`feat:`, `fix:`, `refactor:`, `docs:`, `chore:`).

---

## 👨‍💻 Autore

Ideato e curato da **Stefano Cipollitti**  
Senior Software Engineer, Consulente Indipendente & Formatore  
- Sito Web: [cipo.dev](https://cipo.dev)  
- Profilo GitHub: [@Ste-CipoDev](https://github.com/Ste-CipoDev)

---

## 📄 Licenza

Distribuito con licenza **MIT**. Consulta il file [`LICENSE`](LICENSE) per ulteriori dettagli.

# CIPO-METHOD — Governance & Orchestrazione dei Progetti Agentici
### Standard Operativo per lo Sviluppo Software con Agenti AI Autonomi

[![Multi-Agent Ready](https://img.shields.io/badge/AI%20Agents-Antigravity%20|%20Claude%20|%20Cursor%20|%20Windsurf%20|%20Aider%20|%20Eigent-7952B3?style=flat-square)](https://github.com/Ste-CipoDev/CIPO-Method)
[![Role](https://img.shields.io/badge/Role-Project%20Orchestrator-7952B3?style=flat-square)](README.md)
[![Scope](https://img.shields.io/badge/Scope-Governance%20%26%20Context-008C45?style=flat-square)](README.md)
[![Licenza MIT](https://img.shields.io/badge/Licenza-MIT-blue.svg?style=flat-square)](LICENSE)
[![Lingua Italiano](https://img.shields.io/badge/Lingua-Italiano-008C45?style=flat-square)](README.md)
[![Commit Italiano](https://img.shields.io/badge/Commit-Italiano%20Only-CD212A?style=flat-square)](README.md)

> **"I token e la finestra di contesto della chat sono volatili ed effimeri. Il filesystem locale è eterno e deterministico."**

`cipo-method` è il framework universale per **qualsiasi agente AI di coding** (Google Antigravity, Claude Code, Cursor, Windsurf, Aider, Eigent) che codifica e automatizza il **Metodo CIPO.DEV**: governance rigorosa, memoria persistente su filesystem e gestione maniacale del contesto, progettato per eliminare allucinazioni, regressioni di codice e spreco di token durante lo sviluppo con agenti autonomi.

---

## 🛡️ Il Duo Operativo CIPO.DEV

Nell'ecosistema CIPO.DEV, lo sviluppo agentico si basa sul principio di singola responsabilità (SRP) applicato alla cooperazione con l'Intelligenza Artificiale:

| Ruolo Agente | Modulo / Skill | Compito Operativo |
|---|---|---|
| **Senior Software Engineer** | [`cipo-dev`](https://github.com/Ste-CipoDev/CIPO-Dev) | **Come si scrive il codice (C.I.P.O.):** impone la Scala del Pragmatismo Operativo, YAGNI radicale, divieto di astrazioni premature (niente interfacce a implementazione singola o factory fittizie), transazioni atomiche ACID, tipi esatti (`decimal`) e commit rigorosamente in italiano. |
| **Project Orchestrator** | **`cipo-method`** *(Questo modulo)* | **Come si governa il progetto:** esige il PRD preventivo obbligatorio prima di qualsiasi codice, governa i 3 piani di memoria su filesystem, traccia in tempo reale `STATUS.md` e `MEMORY.md`, isola le chat e configura la dieta delle skill (`.agents/skills.json`) per abbattere i costi di contesto. |

---

## 🏛️ Architettura "Single Source of Truth" & File di Instradamento

In un workspace multimodale, la configurazione raccomandata prevede **un'unica sorgente di verità** per la governance e le regole, referenziata da file leggeri di instradamento posti nella root del repository:

```
[Single Source of Truth: Workspace Root]
   ├── AGENTS.md                   <-- Governance centrale & Ruolo di Orchestrator
   └── _system/rules/
          ├── cipo-dev.md          <-- Principi ingegneristici e scala C.I.P.O.
          └── cipo-method.md       <-- Metodo CIPO.DEV (PRD, Memoria a 3 piani)
          ▲
          │ (puntamento diretto dai file di instradamento)
   ───────┴─────────────────────────────────────────
   ├── CLAUDE.md                   --> Istruzioni per Claude Code
   ├── .cursorrules                --> Istruzioni per Cursor
   ├── .windsurfrules              --> Istruzioni per Windsurf
   ├── .aider.conf.yml             --> File in sola lettura per Aider
   └── EIGENT.md                   --> Guida per lo Space Eigent
```

### Esempio di file di instradamento (`CLAUDE.md` / `.cursorrules` / `.windsurfrules`)
```markdown
Before taking any action, reading files or writing code, you MUST read and strictly adhere to:
1. AGENTS.md
2. _system/rules/cipo-dev.md
3. _system/rules/cipo-method.md
```

---

## 🚀 Installazione Globale per Google Antigravity (Skill)

> **Prerequisiti**: È sufficiente disporre di **Google Antigravity** (o CLI `agy`) installato sul sistema e di una console PowerShell (Windows) o Bash (Linux/macOS).

### 1. Installazione Rapida (One-Liner PowerShell)
Apri una finestra PowerShell ed esegui:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/install.ps1 | iex
```

### 2. Installazione tramite Git Clone (Alternativa)
```powershell
git clone https://github.com/Ste-CipoDev/CIPO-Method.git "$HOME\.gemini\config\skills\cipo-method"
```

### 3. Aggiornamento all'Ultima Versione
Per sincronizzare le ultime migliorie rilasciate sul repository:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/update.ps1 | iex
```

### 4. Disinstallazione Completa
Se desideri rimuovere CIPO-METHOD dal sistema senza lasciare tracce:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/uninstall.ps1 | iex
```

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

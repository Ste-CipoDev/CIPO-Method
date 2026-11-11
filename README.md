# CIPO-METHOD
### Standard Operativo per lo Sviluppo Software con Agenti AI Autonomi

[![Multi-Agent Ready](https://img.shields.io/badge/AI%20Agents-Antigravity%20|%20Claude%20|%20Cursor%20|%20Windsurf%20|%20Aider%20|%20Eigent-4285F4?style=flat-square)](https://github.com/Ste-CipoDev/CIPO-Method)
[![Role](https://img.shields.io/badge/Role-Project%20Orchestrator-7952B3?style=flat-square)](README.md)
[![Scope](https://img.shields.io/badge/Scope-Governance%20%26%20Context-008C45?style=flat-square)](README.md)
[![Licenza MIT](https://img.shields.io/badge/Licenza-MIT-blue.svg?style=flat-square)](LICENSE)

> **"I token e la finestra di contesto della chat sono volatili ed effimeri. Il filesystem locale è eterno e deterministico."**

`cipo-method` è il framework universale per **qualsiasi agente AI di coding** (Google Antigravity, Claude Code, Cursor, Windsurf, Aider, Eigent) che codifica e automatizza il **Metodo CIPO.DEV**: governance rigorosa, memoria persistente su filesystem e gestione maniacale del contesto, progettato per eliminare allucinazioni, regressioni di codice e spreco di token durante lo sviluppo con agenti autonomi.

---

> ### 🤖 Istruzioni Rapide per l'Agente AI (Self-Setup Automatico)
> Se sei un assistente o agente AI (Cursor, Claude Code, Windsurf, Aider, Eigent o Antigravity) e l'utente ti ha chiesto di configurare o installare questo repository nel workspace:
> 1. **Identifica il tuo runtime**: riconosci in quale ambiente stai operando (Cursor, Claude Code, Windsurf, Aider o Antigravity).
> 2. **Salta direttamente alla guida operativa**: vai alla sezione in fondo [Guida di Configurazione per Agenti AI & Ambienti di Sviluppo](#️-guida-di-configurazione-per-agenti-ai--ambienti-di-sviluppo).
> 3. **Esegui l'integrazione per il tuo ambiente**:
>    - **Cursor**: genera/integra `.cursorrules` (oppure `.cursor/rules/cipo-method.mdc`).
>    - **Claude Code**: genera/integra `CLAUDE.md`.
>    - **Windsurf**: genera/integra `.windsurfrules`.
>    - **Aider**: configura `read:` in `.aider.conf.yml`.
>    - **Eigent**: collega lo Space e richiama `skills/cipo-method/SKILL.md`.
>    - **Antigravity**: esegui `install.ps1` per registrare la skill globale.
> 4. **Verifica l'integrazione**: conferma all'utente di aver recepito l'obbligo del PRD preventivo, la gerarchia di memoria su 3 piani e il protocollo di tracciamento continuo di `STATUS.md`.

---

## 🛡️ Il Duo Operativo CIPO.DEV

Nell'ecosistema CIPO.DEV, lo sviluppo agentico si basa sul principio di singola responsabilità (SRP) applicato alla cooperazione con l'Intelligenza Artificiale:

| Ruolo Agente | Modulo / Skill | Compito Operativo |
|---|---|---|
| **Senior Software Engineer** | [`cipo-dev`](https://github.com/Ste-CipoDev/CIPO-Dev) | **Come si scrive il codice (C.I.P.O.):** impone la Scala del Pragmatismo Operativo, YAGNI radicale, divieto di astrazioni premature (niente interfacce a implementazione singola o factory fittizie), transazioni atomiche ACID, tipi esatti (`decimal`) e commit rigorosamente in italiano. |
| **Project Orchestrator** | **`cipo-method`** *(Questo modulo)* | **Come si governa il progetto:** esige il PRD preventivo obbligatorio prima di qualsiasi codice, governa i 3 piani di memoria su filesystem, traccia in tempo reale `STATUS.md` e `MEMORY.md`, isola le chat e configura la dieta delle skill (`.agents/skills.json`) per abbattere i costi di contesto. |

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
      "cipo-dev",
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

## 🏛️ Guida di Configurazione per Agenti AI & Ambienti di Sviluppo

Questa sezione è la guida formale per gli agenti AI e gli sviluppatori su come configurare, installare e referenziare **CIPO-METHOD (`cipo-method`)** sia in modalità autonoma sia in tandem integrato con **`cipo-dev`**.

### 1. Architettura Consigliata: Single Source of Truth
Per azzerare la duplicazione delle regole tra editor diversi, mantieni i file originali in una directory centrale di regole (es. `_system/rules/`) e posiziona nella root del workspace file di instradamento minimalisti che obbligano l'agente a leggerli.

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

---

### 2. Configurazione per Ambiente (Modalità Singola: solo CIPO-Method)

#### A. Google Antigravity & Agent Environments (Linux, macOS & Windows)
- **Installazione One-Liner (Linux & macOS / Bash):**
  ```bash
  curl -fsSL https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/install.sh | bash
  ```
- **Installazione One-Liner (Windows / PowerShell):**
  ```powershell
  irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/install.ps1 | iex
  ```
- **Installazione via Git Clone:**
  ```powershell
  git clone https://github.com/Ste-CipoDev/CIPO-Method.git "$HOME/.gemini/config/skills/cipo-method"
  ```
- **Aggiornamento all'ultima versione:**
  - *Linux/macOS:* `curl -fsSL https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/update.sh | bash`
  - *Windows:* `irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/update.ps1 | iex`
- **Disinstallazione:**
  - *Linux/macOS:* `curl -fsSL https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/uninstall.sh | bash`
  - *Windows:* `irm https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main/uninstall.ps1 | iex`

> 💡 **Template di Governance pronti all'uso:** All'interno della cartella [`templates/`](templates/) di questo repository trovi i modelli conformi al Metodo CIPO.DEV da copiare nei tuoi progetti: [`PRD.md`](templates/PRD.md), [`STATUS.md`](templates/STATUS.md), [`MEMORY.md`](templates/MEMORY.md) e [`skills.json`](templates/skills.json) per l'isolamento locale.

#### B. Claude Code (`CLAUDE.md`)
Crea o modifica il file `CLAUDE.md` nella root del repository:
```markdown
# Claude Code Guidelines

Prima di iniziare qualsiasi task o scrivere codice:
1. Leggi e applica rigorosamente le direttive di governance in `_system/rules/cipo-method.md`.
2. PRD Obbligatorio Preventivo: nessuna riga di codice senza un PRD confermato o un task chiaro in STATUS.md.
3. Rispetta la gerarchia di memoria su 3 piani: `_system/memory/` (generale), `PROGETTI/<nome>/MEMORY.md` (il perché), `PROGETTI/<nome>/STATUS.md` (il cosa).
4. Aggiorna sempre STATUS.md e MEMORY.md prima di chiudere il turno.
5. Scrivi tutti i messaggi di commit rigorosamente in lingua italiana con Conventional Commits.
```

#### C. Cursor (`.cursorrules` oppure `.cursor/rules/cipo-method.mdc`)
Nella root del progetto, crea `.cursorrules`:
```markdown
You are guided by CIPO-METHOD (Project Orchestrator & Method Guardian).
Before generating or editing code:
1. Consult and adhere strictly to `_system/rules/cipo-method.md`.
2. PRD First: never write code without an approved PRD or explicit task in STATUS.md.
3. Maintain 3-tier memory: update STATUS.md and MEMORY.md on every change.
4. Apply 4-phase systematic debugging: isolate root cause before fixing.
5. All git commits must strictly be in Italian with Conventional Commits format.
```

#### D. Windsurf (`.windsurfrules`)
Nella root del progetto, crea `.windsurfrules`:
```markdown
All Cascade and AI agents must strictly follow the governance standards in `_system/rules/cipo-method.md`:
- Mandatory PRD before implementation.
- 3-tier persistent filesystem memory.
- Automatic status tracking in STATUS.md.
- Commit messages strictly in Italian.
```

#### E. Aider (`.aider.conf.yml`)
Crea `.aider.conf.yml` nella root del progetto per caricare le regole in sola lettura:
```yaml
# Aider configuration
read:
  - _system/rules/cipo-method.md

commit-prompt: "All commit messages must be strictly in Italian following Conventional Commits format."
```

#### F. Eigent (Desktop Multi-Agent Space & Skills)
- Collega il tuo repository come **Space** (`Homepage > Spaces`).
- Crea un file `EIGENT.md` nella root che richiama `_system/rules/cipo-method.md`.
- In alternativa, importa la skill `skills/cipo-method/SKILL.md` nella sezione **Homepage > Agents > Skills**.

#### G. LLM Web / Custom Instructions (ChatGPT, Claude Projects)
Incolla il testo di `skills/cipo-method/SKILL.md` all'interno delle **Project Instructions** o nel **System Prompt** dell'assistente.

---

### 3. Configurazione Integrata Tandem (`cipo-dev` + `cipo-method`)

Quando utilizzi sia il motore ingegneristico di **C.I.P.O.** sia il framework di governance di **CIPO-Method**, la configurazione raccomandata nei file di instradamento in root diventa:

#### File di Instradamento Unificato (`CLAUDE.md` / `.cursorrules` / `.windsurfrules`)
```markdown
Before taking any action, reading files or writing code, you MUST read and strictly adhere to:
1. AGENTS.md (Central governance, 3-tier memory, orchestrator protocols)
2. _system/rules/cipo-dev.md (Engineering standards, pragmatism ladder, ACID, zero over-engineering)
3. _system/rules/cipo-method.md (PRD requirement, task tracking, 4-phase debugging, chat isolation)
```

#### Configurazione Aider Unificata (`.aider.conf.yml`)
```yaml
read:
  - AGENTS.md
  - _system/rules/cipo-dev.md
  - _system/rules/cipo-method.md

commit-prompt: "All commit messages must be strictly in Italian following Conventional Commits format."
```

---

## 👨‍💻 Autore

Ideato e curato da **Stefano Cipollitti**  
Senior Software Engineer, Consulente Indipendente & Formatore  
- Sito Web: [cipo.dev](https://cipo.dev)  
- Profilo GitHub: [@Ste-CipoDev](https://github.com/Ste-CipoDev)

---

## 📄 Licenza

Distribuito con licenza **MIT**. Consulta il file [`LICENSE`](LICENSE) per ulteriori dettagli.

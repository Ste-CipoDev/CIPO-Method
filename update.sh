#!/usr/bin/env bash
# Script di aggiornamento automatico per CIPO-METHOD (cipo-method) per Linux/macOS
set -euo pipefail

echo -e "\033[0;36mVerifica e aggiornamento di CIPO-METHOD (cipo-method) in corso...\033[0m"

DEST_GEMINI="$HOME/.gemini/config/skills/cipo-method"
BASE_URL="https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

mkdir -p "$DEST_GEMINI"

if [ -f "./skills/cipo-method/SKILL.md" ]; then
    echo -e "\033[0;33mAggiornamento dai file locali del repository...\033[0m"
    cp -f "./skills/cipo-method/SKILL.md" "$DEST_GEMINI/SKILL.md"
else
    echo -e "\033[0;33mDownload dell'ultima versione da GitHub (Ste-CipoDev/CIPO-Method)...\033[0m"
    curl -fsSL "$BASE_URL/skills/cipo-method/SKILL.md" -o "$DEST_GEMINI/SKILL.md"
fi

# Sincronizzazione su altri ambienti rilevati
if [ -d "$HOME/.claude/skills/cipo-method" ]; then
    cp -f "$DEST_GEMINI/SKILL.md" "$HOME/.claude/skills/cipo-method/SKILL.md"
fi

if [ -d "$HOME/.agents/skills/cipo-method" ]; then
    cp -f "$DEST_GEMINI/SKILL.md" "$HOME/.agents/skills/cipo-method/SKILL.md"
fi

echo -e "\033[0;32mCIPO-METHOD (cipo-method) aggiornato con successo all'ultima versione!\033[0m"

#!/usr/bin/env bash
# Script di installazione automatica di CIPO-METHOD (cipo-method) per Linux/macOS
set -euo pipefail

echo -e "\033[0;36mInstallazione di CIPO-METHOD (cipo-method) in corso...\033[0m"

DEST_GEMINI="$HOME/.gemini/config/skills/cipo-method"
BASE_URL="https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

# 1. Installazione principale per Google Antigravity / Gemini CLI
mkdir -p "$DEST_GEMINI"
curl -fsSL "$BASE_URL/skills/cipo-method/SKILL.md" -o "$DEST_GEMINI/SKILL.md"

# 2. Rilevamento automatico di ambienti Claude Code / Open Agents se presenti
if [ -d "$HOME/.claude/skills" ]; then
    mkdir -p "$HOME/.claude/skills/cipo-method"
    cp -f "$DEST_GEMINI/SKILL.md" "$HOME/.claude/skills/cipo-method/SKILL.md"
    echo -e "\033[0;32mSkill sincronizzata anche in ~/.claude/skills/cipo-method/\033[0m"
fi

if [ -d "$HOME/.agents/skills" ]; then
    mkdir -p "$HOME/.agents/skills/cipo-method"
    cp -f "$DEST_GEMINI/SKILL.md" "$HOME/.agents/skills/cipo-method/SKILL.md"
    echo -e "\033[0;32mSkill sincronizzata anche in ~/.agents/skills/cipo-method/\033[0m"
fi

echo -e "\033[0;32mCIPO-METHOD (cipo-method) installato con successo! È pronto e richiamabile nel tuo ambiente.\033[0m"

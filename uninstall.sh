#!/usr/bin/env bash
# Script di disinstallazione completa di CIPO-METHOD (cipo-method) per Linux/macOS
set -euo pipefail

echo -e "\033[0;33mRimozione di CIPO-METHOD in corso...\033[0m"

REMOVED=0

if [ -d "$HOME/.gemini/config/skills/cipo-method" ]; then
    rm -rf "$HOME/.gemini/config/skills/cipo-method"
    echo -e "\033[0;36mRimossa skill: $HOME/.gemini/config/skills/cipo-method\033[0m"
    REMOVED=1
fi

if [ -d "$HOME/.claude/skills/cipo-method" ]; then
    rm -rf "$HOME/.claude/skills/cipo-method"
    echo -e "\033[0;36mRimossa skill: $HOME/.claude/skills/cipo-method\033[0m"
    REMOVED=1
fi

if [ -d "$HOME/.agents/skills/cipo-method" ]; then
    rm -rf "$HOME/.agents/skills/cipo-method"
    echo -e "\033[0;36mRimossa skill: $HOME/.agents/skills/cipo-method\033[0m"
    REMOVED=1
fi

if [ "$REMOVED" -eq 1 ]; then
    echo -e "\033[0;32mCIPO-METHOD rimosso con successo dal sistema.\033[0m"
else
    echo -e "\033[0;90mNessuna installazione di CIPO-METHOD trovata nel percorso dell'utente.\033[0m"
fi

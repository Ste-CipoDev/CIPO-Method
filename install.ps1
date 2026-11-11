# Script di installazione automatica di CIPO-METHOD per Google Antigravity
$ErrorActionPreference = "Stop"

Write-Host "Installazione di CIPO-METHOD (cipo-method) in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo-method"

# Creazione cartella di destinazione per la skill globale
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

# Download definizione skill globale
Invoke-RestMethod -Uri "$baseUrl/skills/cipo-method/SKILL.md" -OutFile "$destSkills\SKILL.md"

Write-Host "CIPO-METHOD (cipo-method) installato con successo! È pronto e richiamabile come skill in qualsiasi progetto Antigravity." -ForegroundColor Green

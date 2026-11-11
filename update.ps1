# Script di aggiornamento automatico per CIPO-METHOD (cipo-method)
$ErrorActionPreference = "Stop"

Write-Host "Verifica e aggiornamento di CIPO-METHOD (cipo-method) in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo-method"

# Assicurati che la cartella della skill esista
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

try {
    # Se eseguito dentro la cartella locale clonata del repository
    if (Test-Path ".\skills\cipo-method\SKILL.md") {
        Write-Host "Aggiornamento dai file locali del repository..." -ForegroundColor Yellow
        Copy-Item -Force ".\skills\cipo-method\SKILL.md" -Destination "$destSkills\SKILL.md"
    } else {
        # Altrimenti scarica l'ultima versione direttamente da GitHub
        Write-Host "Download dell'ultima versione da GitHub (Ste-CipoDev/CIPO-Method)..." -ForegroundColor Yellow
        Invoke-RestMethod -Uri "$baseUrl/skills/cipo-method/SKILL.md" -OutFile "$destSkills\SKILL.md"
    }

    Write-Host "CIPO-METHOD (cipo-method) aggiornato con successo all'ultima versione!" -ForegroundColor Green
} catch {
    Write-Host "Errore durante l'aggiornamento: $_" -ForegroundColor Red
}

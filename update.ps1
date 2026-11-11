# Script di aggiornamento automatico per CIPO-METHOD (cipo-method)
$ErrorActionPreference = "Stop"

Write-Host "Verifica e aggiornamento di CIPO-METHOD (cipo-method) in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo-method"
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

try {
    if (Test-Path ".\skills\cipo-method\SKILL.md") {
        Write-Host "Aggiornamento dai file locali del repository..." -ForegroundColor Yellow
        Copy-Item -Force ".\skills\cipo-method\SKILL.md" -Destination "$destSkills\SKILL.md"
    } else {
        Write-Host "Download dell'ultima versione da GitHub (Ste-CipoDev/CIPO-Method)..." -ForegroundColor Yellow
        Invoke-RestMethod -Uri "$baseUrl/skills/cipo-method/SKILL.md" -OutFile "$destSkills\SKILL.md"
    }

    $claudeSkills = "$env:USERPROFILE\.claude\skills\cipo-method"
    if (Test-Path (Split-Path $claudeSkills)) {
        New-Item -ItemType Directory -Force -Path $claudeSkills | Out-Null
        Copy-Item -Force "$destSkills\SKILL.md" -Destination "$claudeSkills\SKILL.md"
        Write-Host "Skill aggiornata in: $claudeSkills\" -ForegroundColor Green
    }

    $agentsSkills = "$env:USERPROFILE\.agents\skills\cipo-method"
    if (Test-Path (Split-Path $agentsSkills)) {
        New-Item -ItemType Directory -Force -Path $agentsSkills | Out-Null
        Copy-Item -Force "$destSkills\SKILL.md" -Destination "$agentsSkills\SKILL.md"
        Write-Host "Skill aggiornata in: $agentsSkills\" -ForegroundColor Green
    }

    Write-Host "CIPO-METHOD (cipo-method) aggiornato con successo all'ultima versione!" -ForegroundColor Green
} catch {
    Write-Host "Errore durante l'aggiornamento: $_" -ForegroundColor Red
}

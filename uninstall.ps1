# Script di disinstallazione completa di CIPO-METHOD (cipo-method) per Google Antigravity e ambienti agentici
$ErrorActionPreference = "Stop"

Write-Host "Rimozione di CIPO-METHOD in corso..." -ForegroundColor Yellow

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo-method"
$claudeSkills = "$env:USERPROFILE\.claude\skills\cipo-method"
$agentsSkills = "$env:USERPROFILE\.agents\skills\cipo-method"

$rimosso = $false

if (Test-Path $destSkills) {
    Remove-Item -Recurse -Force $destSkills
    Write-Host "Rimossa skill globale Antigravity: $destSkills" -ForegroundColor Cyan
    $rimosso = $true
}

if (Test-Path $claudeSkills) {
    Remove-Item -Recurse -Force $claudeSkills
    Write-Host "Rimossa skill Claude Code: $claudeSkills" -ForegroundColor Cyan
    $rimosso = $true
}

if (Test-Path $agentsSkills) {
    Remove-Item -Recurse -Force $agentsSkills
    Write-Host "Rimossa skill Open Agents: $agentsSkills" -ForegroundColor Cyan
    $rimosso = $true
}

if ($rimosso) {
    Write-Host "CIPO-METHOD e tutte le relative configurazioni sono stati rimossi con successo dal sistema." -ForegroundColor Green
} else {
    Write-Host "Nessuna installazione di CIPO-METHOD trovata nel percorso dell'utente." -ForegroundColor Gray
}

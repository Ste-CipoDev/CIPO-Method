[CmdletBinding()]
param(
    [switch]$Tandem
)

$ErrorActionPreference = "Stop"

Write-Host "Installazione di CIPO-METHOD (cipo-method) in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo-method"
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Method/main"

# Installazione da file locale se eseguito da repo clonato, altrimenti da GitHub
if (Test-Path ".\skills\cipo-method\SKILL.md") {
    Copy-Item -Force ".\skills\cipo-method\SKILL.md" -Destination "$destSkills\SKILL.md"
} else {
    Invoke-RestMethod -Uri "$baseUrl/skills/cipo-method/SKILL.md" -OutFile "$destSkills\SKILL.md"
}

# Rilevamento automatico di Claude Code e Open Agents su Windows
$claudeSkills = "$env:USERPROFILE\.claude\skills"
if (Test-Path $claudeSkills) {
    New-Item -ItemType Directory -Force -Path "$claudeSkills\cipo-method" | Out-Null
    Copy-Item -Force "$destSkills\SKILL.md" -Destination "$claudeSkills\cipo-method\SKILL.md"
    Write-Host "Skill sincronizzata in: $claudeSkills\cipo-method\" -ForegroundColor Green
}

$agentsSkills = "$env:USERPROFILE\.agents\skills"
if (Test-Path $agentsSkills) {
    New-Item -ItemType Directory -Force -Path "$agentsSkills\cipo-method" | Out-Null
    Copy-Item -Force "$destSkills\SKILL.md" -Destination "$agentsSkills\cipo-method\SKILL.md"
    Write-Host "Skill sincronizzata in: $agentsSkills\cipo-method\" -ForegroundColor Green
}

Write-Host "CIPO-METHOD (cipo-method) installato con successo!" -ForegroundColor Green

if ($Tandem) {
    Write-Host "Installazione combinata Tandem: installazione di C.I.P.O. (cipo-dev) in corso..." -ForegroundColor Cyan
    $devScript = "https://raw.githubusercontent.com/Ste-CipoDev/CIPO-Dev/main/install.ps1"
    Invoke-RestMethod -Uri $devScript | Invoke-Expression
}

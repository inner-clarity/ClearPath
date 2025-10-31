# Script para crear todos los archivos en aleman
# Mismo nombre que espanol, contenido en aleman

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Creando archivos en ALEMAN" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$esPath = "C:\Users\aparada\ClearPath\docs\es"
$dePath = "C:\Users\aparada\ClearPath\docs\de"
$created = 0

# Obtener todos los archivos de espanol
$esFiles = Get-ChildItem -Path $esPath -Filter "*.md" | Sort-Object Name

foreach ($file in $esFiles) {
    $deFile = Join-Path $dePath $file.Name
    
    if (-not (Test-Path $deFile)) {
        # Crear archivo aleman con marcador de traduccion
        $deContent = @"
---
title: [Zu übersetzen]
---

<!-- TODO: translation missing - German version -->

# [Titel zu übersetzen]

Diese Seite wurde noch nicht übersetzt. Bitte konsultieren Sie vorerst die [spanische Version](/es/$($file.BaseName)).

---

*Dieser Inhalt wird gerade übersetzt. Schauen Sie bald wieder vorbei.*
"@
        
        $deContent | Out-File -FilePath $deFile -Encoding UTF8
        Write-Host "  CREATO: $($file.Name)" -ForegroundColor Green
        $created++
    }
    else {
        Write-Host "  ESISTE: $($file.Name)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "TOTAL: $created archivos creados en aleman" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""


# Script para crear todos los archivos en frances
# Mismo nombre que espanol, contenido en frances

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Creando archivos en FRANCES" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$esPath = "C:\Users\aparada\ClearPath\docs\es"
$frPath = "C:\Users\aparada\ClearPath\docs\fr"
$created = 0

# Obtener todos los archivos de espanol
$esFiles = Get-ChildItem -Path $esPath -Filter "*.md" | Sort-Object Name

foreach ($file in $esFiles) {
    $frFile = Join-Path $frPath $file.Name
    
    if (-not (Test-Path $frFile)) {
        # Crear archivo frances con marcador de traduccion
        $frContent = @"
---
title: [A traduire]
---

<!-- TODO: translation missing - French version -->

# [Titre a traduire]

Cette page n'a pas encore ete traduite. Veuillez consulter la [version espagnole](/es/$($file.BaseName)) pour le moment.

---

*Ce contenu est en cours de traduction. Revenez bientot.*
"@
        
        $frContent | Out-File -FilePath $frFile -Encoding UTF8
        Write-Host "  CREATO: $($file.Name)" -ForegroundColor Green
        $created++
    }
    else {
        Write-Host "  ESISTE: $($file.Name)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "TOTAL: $created archivos creados en frances" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""


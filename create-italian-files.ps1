# Script para crear todos los archivos en italiano
# Mismo nombre que espanol, contenido en italiano

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Creando archivos en ITALIANO" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$esPath = "C:\Users\aparada\ClearPath\docs\es"
$itPath = "C:\Users\aparada\ClearPath\docs\it"
$created = 0

# Obtener todos los archivos de espanol
$esFiles = Get-ChildItem -Path $esPath -Filter "*.md" | Sort-Object Name

foreach ($file in $esFiles) {
    $itFile = Join-Path $itPath $file.Name
    
    if (-not (Test-Path $itFile)) {
        # Leer contenido del archivo español
        $esContent = Get-Content -Path $file.FullName -Raw -Encoding UTF8
        
        # Crear archivo italiano con marcador de traducción
        $itContent = @"
---
title: [Da tradurre]
---

<!-- TODO: translation missing - Italian version -->

# [Titolo da tradurre]

Questa pagina non è ancora stata tradotta. Per favore, consulta la [versione in spagnolo](/es/$($file.BaseName)) per ora.

---

*Questo contenuto è in fase di traduzione. Torna presto.*
"@
        
        $itContent | Out-File -FilePath $itFile -Encoding UTF8
        Write-Host "  CREATO: $($file.Name)" -ForegroundColor Green
        $created++
    }
    else {
        Write-Host "  ESISTE: $($file.Name)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "TOTAL: $created archivos creados en italiano" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""


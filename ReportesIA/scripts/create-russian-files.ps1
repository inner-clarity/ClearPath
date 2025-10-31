# Script para crear archivos placeholder en ruso para ClearPath
# Basado en la estructura de español (idioma base)

$targetLang = "ru"
$sourceLang = "es"

Write-Host "=== Creando archivos en ruso para ClearPath ===" -ForegroundColor Cyan
Write-Host ""

# Crear directorio ru si no existe
if (-not (Test-Path "docs\$targetLang")) {
    New-Item -ItemType Directory -Path "docs\$targetLang" | Out-Null
    Write-Host "Directorio docs\$targetLang creado" -ForegroundColor Green
}

# Obtener todos los archivos .md de español
$sourceFiles = Get-ChildItem -Path "docs\$sourceLang" -Filter "*.md" -Recurse

$created = 0
$existing = 0

foreach ($file in $sourceFiles) {
    # Obtener ruta relativa desde docs/es/
    $relativePath = $file.FullName.Replace((Get-Item "docs\$sourceLang").FullName, "").TrimStart('\')
    
    # Crear ruta destino en ru
    $targetPath = Join-Path "docs\$targetLang" $relativePath
    $targetDir = Split-Path $targetPath -Parent
    
    # Crear directorio si no existe
    if (-not (Test-Path $targetDir)) {
        New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
    }
    
    # Crear archivo si no existe
    if (-not (Test-Path $targetPath)) {
        # Leer contenido del archivo español
        $content = Get-Content $file.FullName -Raw -Encoding UTF8
        
        # Crear contenido placeholder en ruso
        $russianContent = @"
---
layout: doc
title: [RU] $(Split-Path $file.Name -LeafBase)
lang: ru
---

# [RU] Перевод в процессе

> **Примечание:** Эта страница еще не переведена на русский язык.  
> Содержимое находится в процессе перевода.

<!-- TODO: Перевести эту страницу с испанского -->

---

::: tip Добро пожаловать!
Примечание: ClearPath — это независимый образовательный ресурс, созданный верными членами для поддержки руководителей, семей и профессионалов. Он не связан и официально не одобрен Церковью Иисуса Христа Святых последних дней.

Каждый путь к ясности начинается с первого шага. Ваш начинается здесь.
:::
"@
        
        Set-Content -Path $targetPath -Value $russianContent -Encoding UTF8
        $created++
        Write-Host "✓ Creado: $relativePath" -ForegroundColor Green
    }
    else {
        $existing++
        Write-Host "- Ya existe: $relativePath" -ForegroundColor DarkGray
    }
}

Write-Host ""
Write-Host "=== Resumen ===" -ForegroundColor Cyan
Write-Host "Archivos creados: $created" -ForegroundColor Green
Write-Host "Archivos existentes: $existing" -ForegroundColor Yellow
Write-Host "Total procesados: $($created + $existing)" -ForegroundColor White
Write-Host ""
Write-Host "Completado!" -ForegroundColor Green
Write-Host "Ahora ejecuta el script de disclaimer" -ForegroundColor Yellow


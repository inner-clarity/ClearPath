# Script para crear archivos faltantes en ingles y portugues
# Todos los archivos deben existir en todos los idiomas

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Creando archivos faltantes i18n" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = "C:\Users\aparada\ClearPath\docs"

# Lista completa de archivos en espanol
$esFiles = @(
    "autism.md",
    "autismo.md",
    "busqueda-ayuda.md",
    "index.md",
    "mitos.md",
    "mitos-adultos-mayores.md",
    "mitos-amistad.md",
    "mitos-amistad-continuacion.md",
    "mitos-amor.md",
    "mitos-amor-continuacion.md",
    "mitos-arrepentimiento.md",
    "mitos-bautismo.md",
    "mitos-clases-sociales.md",
    "mitos-clases-sociales-continuacion.md",
    "mitos-crianza.md",
    "mitos-culturas.md",
    "mitos-culturas-continuacion.md",
    "mitos-duelo.md",
    "mitos-educacion.md",
    "mitos-educacion-continuacion.md",
    "mitos-etapas-de-la-vida.md",
    "mitos-etapas-de-la-vida-continuacion.md",
    "mitos-evolucion.md",
    "mitos-evolucion-continuacion.md",
    "mitos-familia.md",
    "mitos-familia-continuacion.md",
    "mitos-fetichismo.md",
    "mitos-generales-1.md",
    "mitos-generales-2.md",
    "mitos-generales-3.md",
    "mitos-generales-4.md",
    "mitos-generales-5.md",
    "mitos-generales-6.md",
    "mitos-generales-7.md",
    "mitos-internet.md",
    "mitos-juventud.md",
    "mitos-laboral.md",
    "mitos-laboral-continuacion.md",
    "mitos-liderazgo.md",
    "mitos-miedos.md",
    "mitos-miedos-continuacion.md",
    "mitos-mision.md",
    "mitos-oracion.md",
    "mitos-relaciones.md",
    "mitos-sacramental.md",
    "mitos-tecnologia.md",
    "myths.md",
    "prenc.md",
    "prenc-lista.md",
    "ptsd.md",
    "readme.md",
    "tept.md",
    "test-search.md",
    "tourette.md"
)

function Get-TitleFromFilename {
    param([string]$filename)
    
    $name = $filename -replace "\.md$", ""
    $name = $name -replace "-", " "
    $name = (Get-Culture).TextInfo.ToTitleCase($name)
    return $name
}

function Create-MissingFile {
    param(
        [string]$path,
        [string]$filename,
        [string]$lang,
        [string]$langName
    )
    
    $fullPath = Join-Path $path $filename
    
    if (-not (Test-Path $fullPath)) {
        $title = Get-TitleFromFilename $filename
        
        if ($lang -eq "en") {
            $content = @"
---
title: $title
---

<!-- TODO: translation missing -->

# $title

This page hasn't been translated yet. Please refer to the [Spanish version](/es/$($filename -replace '\.md$', '')) for now.

---

*This content is being translated. Check back soon.*
"@
        }
        else {
            $content = @"
---
title: $title
---

<!-- TODO: translation missing -->

# $title

Esta pagina ainda nao foi traduzida. Por favor, consulte a [versao em espanhol](/es/$($filename -replace '\.md$', '')) por enquanto.

---

*Este conteudo esta sendo traduzido. Volte em breve.*
"@
        }
        
        try {
            $content | Out-File -FilePath $fullPath -Encoding UTF8
            Write-Host "  CREADO: $filename" -ForegroundColor Green
            return $true
        }
        catch {
            Write-Host "  ERROR: $filename - $_" -ForegroundColor Red
            return $false
        }
    }
    else {
        Write-Host "  EXISTE: $filename" -ForegroundColor Yellow
        return $false
    }
}

# Crear archivos en INGLES
Write-Host "Creando archivos faltantes en INGLES (en/)..." -ForegroundColor Yellow
$enPath = Join-Path $projectRoot "en"
$enCreated = 0

foreach ($file in $esFiles) {
    if (Create-MissingFile $enPath $file "en" "English") {
        $enCreated++
    }
}

Write-Host ""
Write-Host "Archivos creados en ingles: $enCreated" -ForegroundColor Cyan
Write-Host ""

# Crear archivos en PORTUGUES
Write-Host "Creando archivos faltantes en PORTUGUES (pt/)..." -ForegroundColor Yellow
$ptPath = Join-Path $projectRoot "pt"
$ptCreated = 0

foreach ($file in $esFiles) {
    if (Create-MissingFile $ptPath $file "pt" "Portuguese") {
        $ptCreated++
    }
}

Write-Host ""
Write-Host "Archivos creados en portugues: $ptCreated" -ForegroundColor Cyan
Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "TOTAL: $($enCreated + $ptCreated) archivos creados" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""


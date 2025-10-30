# Script para corregir nombres de archivos segun regla i18n
# REGLA: Todos los archivos en todos los idiomas deben llamarse igual que en espanol

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Corrigiendo nombres a nomenclatura espanola" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = "C:\Users\aparada\ClearPath"
$errorsFound = $false

function Rename-FileIfExists {
    param(
        [string]$path,
        [string]$oldName,
        [string]$newName
    )
    
    $fullOldPath = Join-Path $path $oldName
    $fullNewPath = Join-Path $path $newName
    
    if (Test-Path $fullOldPath) {
        try {
            Rename-Item -Path $fullOldPath -NewName $newName -ErrorAction Stop
            Write-Host "  OK $oldName -> $newName" -ForegroundColor Green
            return $true
        }
        catch {
            Write-Host "  ERROR: $_" -ForegroundColor Red
            $script:errorsFound = $true
            return $false
        }
    }
    else {
        Write-Host "  SKIP (no existe): $oldName" -ForegroundColor Yellow
        return $false
    }
}

# ==========================================
# INGLES - 17 archivos
# ==========================================
Write-Host "Renombrando archivos en INGLES (en/)..." -ForegroundColor Yellow
$enPath = Join-Path $projectRoot "docs\en"

Rename-FileIfExists $enPath "mitos-cultures-continuacion.md" "mitos-culturas-continuacion.md"
Rename-FileIfExists $enPath "mitos-education.md" "mitos-educacion.md"
Rename-FileIfExists $enPath "mitos-education-continuacion.md" "mitos-educacion-continuacion.md"
Rename-FileIfExists $enPath "mitos-elderly.md" "mitos-adultos-mayores.md"
Rename-FileIfExists $enPath "mitos-evolution-continuacion.md" "mitos-evolucion-continuacion.md"
Rename-FileIfExists $enPath "mitos-family.md" "mitos-familia.md"
Rename-FileIfExists $enPath "mitos-family-continuacion.md" "mitos-familia-continuacion.md"
Rename-FileIfExists $enPath "mitos-fears-continuacion.md" "mitos-miedos-continuacion.md"
Rename-FileIfExists $enPath "mitos-friendship.md" "mitos-amistad.md"
Rename-FileIfExists $enPath "mitos-friendship-continuacion.md" "mitos-amistad-continuacion.md"
Rename-FileIfExists $enPath "mitos-life-stages-continuacion.md" "mitos-etapas-de-la-vida-continuacion.md"
Rename-FileIfExists $enPath "mitos-love.md" "mitos-amor.md"
Rename-FileIfExists $enPath "mitos-love-continuacion.md" "mitos-amor-continuacion.md"
Rename-FileIfExists $enPath "mitos-social-classes-continuacion.md" "mitos-clases-sociales-continuacion.md"
Rename-FileIfExists $enPath "mitos-workplace.md" "mitos-laboral.md"
Rename-FileIfExists $enPath "mitos-workplace-continuacion.md" "mitos-laboral-continuacion.md"
Rename-FileIfExists $enPath "prenc-list.md" "prenc-lista.md"

Write-Host ""

# ==========================================
# PORTUGUES - 13 archivos
# ==========================================
Write-Host "Renombrando archivos en PORTUGUES (pt/)..." -ForegroundColor Yellow
$ptPath = Join-Path $projectRoot "docs\pt"

Rename-FileIfExists $ptPath "mitos-amistade.md" "mitos-amistad.md"
Rename-FileIfExists $ptPath "mitos-amistade-continuacao.md" "mitos-amistad-continuacion.md"
Rename-FileIfExists $ptPath "mitos-amor-continuacao.md" "mitos-amor-continuacion.md"
Rename-FileIfExists $ptPath "mitos-classes-sociais-continuacao.md" "mitos-clases-sociales-continuacion.md"
Rename-FileIfExists $ptPath "mitos-culturas-continuacao.md" "mitos-culturas-continuacion.md"
Rename-FileIfExists $ptPath "mitos-educacao.md" "mitos-educacion.md"
Rename-FileIfExists $ptPath "mitos-educacao-continuacao.md" "mitos-educacion-continuacion.md"
Rename-FileIfExists $ptPath "mitos-etapas-da-vida-continuacao.md" "mitos-etapas-de-la-vida-continuacion.md"
Rename-FileIfExists $ptPath "mitos-evolucao-continuacao.md" "mitos-evolucion-continuacion.md"
Rename-FileIfExists $ptPath "mitos-familia-continuacao.md" "mitos-familia-continuacion.md"
Rename-FileIfExists $ptPath "mitos-gerais-1.md" "mitos-generales-1.md"
Rename-FileIfExists $ptPath "mitos-laboral-continuacao.md" "mitos-laboral-continuacion.md"
Rename-FileIfExists $ptPath "mitos-medos-continuacao.md" "mitos-miedos-continuacion.md"

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan

if ($errorsFound) {
    Write-Host "Proceso completado con ERRORES" -ForegroundColor Red
    exit 1
}
else {
    Write-Host "30 archivos renombrados exitosamente!" -ForegroundColor Green
    Write-Host ""
    Write-Host "SIGUIENTE: Actualizar config.mts y hacer deploy" -ForegroundColor Yellow
}

Write-Host ""


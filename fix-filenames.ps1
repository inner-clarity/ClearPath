# Script para renombrar archivos según convenciones i18n de ClearPath
# Ejecutar desde la raíz del proyecto ClearPath

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  🔧 Corrección de nombres de archivos i18n" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = "C:\Users\aparada\ClearPath"
$errorsFound = $false

# Función para renombrar archivo con verificación
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
            Write-Host "  ✅ $oldName → $newName" -ForegroundColor Green
            return $true
        }
        catch {
            Write-Host "  ❌ Error renombrando $oldName : $_" -ForegroundColor Red
            $script:errorsFound = $true
            return $false
        }
    }
    else {
        Write-Host "  ⚠️  Archivo no encontrado: $oldName" -ForegroundColor Yellow
        return $false
    }
}

# ==========================================
# ESPAÑOL (es)
# ==========================================
Write-Host "📁 Renombrando archivos en ESPAÑOL (es/)..." -ForegroundColor Yellow
$esPath = Join-Path $projectRoot "docs\es"

Rename-FileIfExists $esPath "Autism.md" "autism.md"
Rename-FileIfExists $esPath "Autismo.md" "autismo.md"
Rename-FileIfExists $esPath "PRENC.md" "prenc.md"
Rename-FileIfExists $esPath "PRENCLista.md" "prenc-lista.md"
Rename-FileIfExists $esPath "PTSD.md" "ptsd.md"
Rename-FileIfExists $esPath "TEPT.md" "tept.md"
Rename-FileIfExists $esPath "Tourette.md" "tourette.md"

Write-Host ""

# ==========================================
# INGLÉS (en)
# ==========================================
Write-Host "📁 Renombrando archivos en INGLÉS (en/)..." -ForegroundColor Yellow
$enPath = Join-Path $projectRoot "docs\en"

Rename-FileIfExists $enPath "Autism.md" "autism.md"
Rename-FileIfExists $enPath "Autismo.md" "autismo.md"
Rename-FileIfExists $enPath "PRENC.md" "prenc.md"
Rename-FileIfExists $enPath "PRENCList.md" "prenc-list.md"
Rename-FileIfExists $enPath "TEPT.md" "tept.md"
Rename-FileIfExists $enPath "Tourette.md" "tourette.md"

Write-Host ""

# ==========================================
# PORTUGUÉS (pt)
# ==========================================
Write-Host "📁 Renombrando archivos en PORTUGUÉS (pt/)..." -ForegroundColor Yellow
$ptPath = Join-Path $projectRoot "docs\pt"

Rename-FileIfExists $ptPath "Autism.md" "autism.md"
Rename-FileIfExists $ptPath "Autismo.md" "autismo.md"
Rename-FileIfExists $ptPath "PRENC.md" "prenc.md"
Rename-FileIfExists $ptPath "PRENCLista.md" "prenc-lista.md"
Rename-FileIfExists $ptPath "PTSD.md" "ptsd.md"
Rename-FileIfExists $ptPath "TEPT.md" "tept.md"
Rename-FileIfExists $ptPath "Tourette.md" "tourette.md"

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan

if ($errorsFound) {
    Write-Host "❌ Proceso completado con ERRORES" -ForegroundColor Red
    Write-Host ""
    Write-Host "Revisa los mensajes de error anteriores." -ForegroundColor Yellow
    exit 1
}
else {
    Write-Host "✅ ¡Renombrado completado exitosamente!" -ForegroundColor Green
    Write-Host ""
    Write-Host "⚠️  IMPORTANTE: Ahora debes actualizar:" -ForegroundColor Yellow
    Write-Host "   1. El archivo config.mts (rutas en nav y sidebar)" -ForegroundColor White
    Write-Host "   2. Enlaces internos en archivos .md que referencien estos archivos" -ForegroundColor White
    Write-Host "   3. Ejecutar 'npm run build' para verificar que todo funcione" -ForegroundColor White
    Write-Host ""
    Write-Host "📄 Consulta AUDITORIA_I18N_NOMBRES_ARCHIVOS.md para más detalles" -ForegroundColor Cyan
}

Write-Host ""


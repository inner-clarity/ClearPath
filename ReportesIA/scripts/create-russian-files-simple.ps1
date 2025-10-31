# Script simplificado para crear archivos en ruso

Write-Host "Creando archivos en ruso..." -ForegroundColor Cyan

# Crear directorio
New-Item -ItemType Directory -Path "docs\ru" -Force | Out-Null

# Lista de archivos a crear (basado en español)
$archivos = @(
    "index.md",
    "tept.md",
    "prenc.md",
    "autismo.md",
    "tourette.md",
    "mitos.md",
    "busqueda-ayuda.md",
    "mitos-sacramental.md",
    "mitos-juventud.md",
    "mitos-bautismo.md",
    "mitos-adultos-mayores.md",
    "mitos-etapas-de-la-vida.md",
    "mitos-etapas-de-la-vida-continuacion.md",
    "mitos-culturas.md",
    "mitos-culturas-continuacion.md",
    "mitos-clases-sociales.md",
    "mitos-clases-sociales-continuacion.md",
    "mitos-laboral.md",
    "mitos-laboral-continuacion.md",
    "mitos-crianza.md",
    "mitos-mision.md",
    "mitos-duelo.md",
    "mitos-oracion.md",
    "mitos-liderazgo.md",
    "mitos-amor.md",
    "mitos-amor-continuacion.md",
    "mitos-relaciones.md",
    "mitos-familia.md",
    "mitos-familia-continuacion.md",
    "mitos-amistad.md",
    "mitos-amistad-continuacion.md",
    "mitos-educacion.md",
    "mitos-educacion-continuacion.md",
    "mitos-evolucion.md",
    "mitos-evolucion-continuacion.md",
    "mitos-miedos.md",
    "mitos-miedos-continuacion.md",
    "mitos-fetichismo.md",
    "mitos-internet.md",
    "mitos-tecnologia.md",
    "mitos-arrepentimiento.md",
    "mitos-generales-1.md",
    "mitos-generales-2.md",
    "mitos-generales-3.md",
    "mitos-generales-4.md",
    "mitos-generales-5.md",
    "mitos-generales-6.md",
    "mitos-generales-7.md"
)

$created = 0

foreach ($archivo in $archivos) {
    $rutaCompleta = "docs\ru\$archivo"
    
    if (-not (Test-Path $rutaCompleta)) {
        $contenido = "# [RU] Traduccion en proceso`n`n> Esta pagina esta pendiente de traduccion al ruso.`n"
        Set-Content -Path $rutaCompleta -Value $contenido -Encoding UTF8
        $created++
        Write-Host "  Creado: $archivo" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Archivos creados: $created" -ForegroundColor Green
Write-Host "Completado!" -ForegroundColor Cyan


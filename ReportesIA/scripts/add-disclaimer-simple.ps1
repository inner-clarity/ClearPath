# Script para agregar disclaimer - ClearPath

Write-Host "Agregando disclaimer en todas las paginas..." -ForegroundColor Cyan

$idiomas = @('es', 'en', 'pt', 'it', 'fr', 'de', 'ru')
$total = 0
$actualizado = 0

foreach ($lang in $idiomas) {
    if (Test-Path "docs\$lang") {
        Write-Host "Procesando: $lang" -ForegroundColor Green
        $archivos = Get-ChildItem "docs\$lang\*.md" -Recurse
        
        foreach ($archivo in $archivos) {
            $total++
            $contenido = Get-Content $archivo.FullName -Raw -Encoding UTF8
            
            if ($contenido -notmatch "independent educational resource") {
                $disclaimer = "`n`n---`n`n::: tip`nDisclaimer pending translation`n:::"
                $nuevoContenido = $contenido.TrimEnd() + $disclaimer
                Set-Content -Path $archivo.FullName -Value $nuevoContenido -Encoding UTF8
                $actualizado++
            }
        }
    }
}

Write-Host ""
Write-Host "Total archivos: $total" -ForegroundColor White
Write-Host "Actualizados: $actualizado" -ForegroundColor Green
Write-Host "Completado!" -ForegroundColor Cyan


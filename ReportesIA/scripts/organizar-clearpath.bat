@echo off
echo ==========================================
echo   ORGANIZANDO PROYECTO CLEARPATH
echo   Moviendo archivos a ReportesIA/
echo ==========================================

cd /d %~dp0

echo.
echo Creando estructura en ReportesIA...
mkdir ReportesIA\documentacion 2>nul
mkdir ReportesIA\scripts 2>nul
mkdir ReportesIA\archivos-backup 2>nul
mkdir ReportesIA\listas-archivos 2>nul

echo.
echo Paso 1: Moviendo archivos .md de documentacion...
move /Y ARCHIVOS_FALTANTES_I18N.md ReportesIA\documentacion\ 2>nul
move /Y AUDITORIA_I18N_NOMBRES_ARCHIVOS.md ReportesIA\documentacion\ 2>nul
move /Y CAMBIOS_CONFIG_I18N.md ReportesIA\documentacion\ 2>nul
move /Y CONFIGURACION_GITHUB_PAGES.md ReportesIA\documentacion\ 2>nul
move /Y INCONSISTENCIAS_NOMBRES_I18N.md ReportesIA\documentacion\ 2>nul
move /Y MEJORAS_DISENO_CLEARPATH.md ReportesIA\documentacion\ 2>nul
move /Y REPORTE_COMPLETO_I18N.md ReportesIA\documentacion\ 2>nul
move /Y VERIFICACION_COMPLETA_I18N.md ReportesIA\documentacion\ 2>nul
echo OK - Archivos .md movidos

echo.
echo Paso 2: Moviendo scripts .ps1...
move /Y create-french-files.ps1 ReportesIA\scripts\ 2>nul
move /Y create-german-files.ps1 ReportesIA\scripts\ 2>nul
move /Y create-italian-files.ps1 ReportesIA\scripts\ 2>nul
move /Y create-missing-files.ps1 ReportesIA\scripts\ 2>nul
move /Y fix-filenames.ps1 ReportesIA\scripts\ 2>nul
move /Y fix-i18n-names.ps1 ReportesIA\scripts\ 2>nul
echo OK - Scripts .ps1 movidos

echo.
echo Paso 3: Moviendo carpetas backup...
move /Y docs\en-backup-names ReportesIA\archivos-backup\ 2>nul
move /Y docs\pt-backup-names ReportesIA\archivos-backup\ 2>nul
echo OK - Backups movidos

echo.
echo Paso 4: Moviendo archivos .txt de listas...
move /Y docs\english_files.txt ReportesIA\listas-archivos\ 2>nul
move /Y docs\portuguese_files.txt ReportesIA\listas-archivos\ 2>nul
move /Y docs\spanish_files.txt ReportesIA\listas-archivos\ 2>nul
echo OK - Listas .txt movidas

echo.
echo Paso 5: Moviendo archivos .old a backup...
move /Y docs\*.old ReportesIA\archivos-backup\ 2>nul
echo OK - Archivos .old movidos

echo.
echo ==========================================
echo   ORGANIZACION COMPLETA
echo ==========================================
echo.
echo Estructura final en raiz:
echo   - package.json
echo   - package-lock.json
echo   - update-site.bat
echo   - README.md
echo   - docs/ (sitio web)
echo   - node_modules/
echo   - ReportesIA/ (documentacion y scripts)
echo.
echo Todo lo demas movido a ReportesIA/
echo.
pause


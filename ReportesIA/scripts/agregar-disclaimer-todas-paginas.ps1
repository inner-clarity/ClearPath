# Script para agregar disclaimer en todas las páginas de ClearPath
# UTF-8 encoding

$disclaimers = @{
    'es' = @"

---

::: tip ¡Bienvenido!
Nota: ClearPath es un recurso educativo independiente, creado por miembros fieles para apoyar a líderes, familias y profesionales. No está afiliado ni oficialmente respaldado por La Iglesia de Jesucristo de los Santos de los Últimos Días.

Cada camino hacia la claridad comienza con un primer paso. El tuyo comienza aquí.
:::
"@
    'en' = @"

---

::: tip Welcome!
Note: ClearPath is an independent educational resource, created by faithful members to support leaders, families, and professionals. It is not affiliated with or officially endorsed by The Church of Jesus Christ of Latter-day Saints.

Every path to clarity begins with a first step. Yours starts here.
:::
"@
    'pt' = @"

---

::: tip Bem-vindo!
Nota: ClearPath é um recurso educacional independente, criado por membros fiéis para apoiar líderes, famílias e profissionais. Não é afiliado nem oficialmente endossado pela Igreja de Jesus Cristo dos Santos dos Últimos Dias.

Cada caminho para a clareza começa com um primeiro passo. O seu começa aqui.
:::
"@
    'it' = @"

---

::: tip Benvenuto!
Nota: ClearPath è una risorsa educativa indipendente, creata da membri fedeli per supportare leader, famiglie e professionisti. Non è affiliata né ufficialmente approvata dalla Chiesa di Gesù Cristo dei Santi degli Ultimi Giorni.

Ogni percorso verso la chiarezza inizia con un primo passo. Il tuo inizia qui.
:::
"@
    'fr' = @"

---

::: tip Bienvenue!
Note: ClearPath est une ressource éducative indépendante, créée par des membres fidèles pour soutenir les dirigeants, les familles et les professionnels. Elle n'est pas affiliée ni officiellement approuvée par l'Église de Jésus-Christ des Saints des Derniers Jours.

Chaque chemin vers la clarté commence par un premier pas. Le vôtre commence ici.
:::
"@
    'de' = @"

---

::: tip Willkommen!
Hinweis: ClearPath ist eine unabhängige Bildungsressource, die von treuen Mitgliedern erstellt wurde, um Führungskräfte, Familien und Fachleute zu unterstützen. Sie ist nicht mit der Kirche Jesu Christi der Heiligen der Letzten Tage verbunden oder wird von dieser offiziell unterstützt.

Jeder Weg zur Klarheit beginnt mit einem ersten Schritt. Deiner beginnt hier.
:::
"@
    'ru' = @"

---

::: tip Добро пожаловать!
Примечание: ClearPath — это независимый образовательный ресурс, созданный верными членами для поддержки руководителей, семей и профессионалов. Он не связан и официально не одобрен Церковью Иисуса Христа Святых последних дней.

Каждый путь к ясности начинается с первого шага. Ваш начинается здесь.
:::
"@
}

Write-Host "=== Agregando disclaimer a todas las páginas de ClearPath ===" -ForegroundColor Cyan
Write-Host ""

$totalFiles = 0
$updatedFiles = 0

foreach ($lang in $disclaimers.Keys) {
    $langPath = "docs\$lang"
    
    if (-not (Test-Path $langPath)) {
        Write-Host "Idioma $lang no existe, saltando..." -ForegroundColor Yellow
        continue
    }
    
    Write-Host "Procesando idioma: $lang" -ForegroundColor Green
    
    $mdFiles = Get-ChildItem -Path $langPath -Filter "*.md" -Recurse
    
    foreach ($file in $mdFiles) {
        $totalFiles++
        $content = Get-Content $file.FullName -Raw -Encoding UTF8
        
        # Verificar si ya tiene el disclaimer
        if ($content -notmatch "independent educational resource|recurso educativo independiente") {
            # Agregar al final
            $newContent = $content.TrimEnd() + "`n" + $disclaimers[$lang]
            Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8 -NoNewline
            $updatedFiles++
            Write-Host "  ✓ $($file.Name)" -ForegroundColor Gray
        }
        else {
            Write-Host "  - $($file.Name) (ya tiene disclaimer)" -ForegroundColor DarkGray
        }
    }
}

Write-Host ""
Write-Host "=== Resumen ===" -ForegroundColor Cyan
Write-Host "Archivos procesados: $totalFiles" -ForegroundColor White
Write-Host "Archivos actualizados: $updatedFiles" -ForegroundColor Green
Write-Host "¡Completado!" -ForegroundColor Green


# 📝 INSTRUCCIONES: Agregar Disclaimer en Todas las Páginas

**Proyecto:** ClearPath  
**Objetivo:** Agregar disclaimer en TODAS las páginas .md de TODOS los idiomas  
**Idiomas:** Español, English, Português, Italiano, Français, Deutsch, Русский

---

## 🚀 PASOS A EJECUTAR

### **Paso 1: Crear archivos en ruso**

Abre PowerShell en la carpeta ClearPath y ejecuta:

```powershell
cd C:\Users\aparada\ClearPath
.\ReportesIA\scripts\create-russian-files.ps1
```

**Esto creará:**
- Carpeta `docs/ru/`
- 54 archivos .md con placeholders en ruso
- Cada archivo con disclaimer ya incluido

---

### **Paso 2: Agregar disclaimer en otros idiomas**

En la misma PowerShell, ejecuta:

```powershell
.\ReportesIA\scripts\agregar-disclaimer-todas-paginas.ps1
```

**Esto agregará el disclaimer al final de:**
- Todas las páginas en `docs/es/` (español)
- Todas las páginas en `docs/en/` (inglés)
- Todas las páginas en `docs/pt/` (portugués)
- Todas las páginas en `docs/it/` (italiano)
- Todas las páginas en `docs/fr/` (francés)
- Todas las páginas en `docs/de/` (alemán)
- Todas las páginas en `docs/ru/` (ruso)

---

## 📋 DISCLAIMER POR IDIOMA

### **Español:**
```markdown
::: tip ¡Bienvenido!
Nota: ClearPath es un recurso educativo independiente, creado por miembros fieles para apoyar a líderes, familias y profesionales. No está afiliado ni oficialmente respaldado por La Iglesia de Jesucristo de los Santos de los Últimos Días.

Cada camino hacia la claridad comienza con un primer paso. El tuyo comienza aquí.
:::
```

### **English:**
```markdown
::: tip Welcome!
Note: ClearPath is an independent educational resource, created by faithful members to support leaders, families, and professionals. It is not affiliated with or officially endorsed by The Church of Jesus Christ of Latter-day Saints.

Every path to clarity begins with a first step. Yours starts here.
:::
```

### **Português:**
```markdown
::: tip Bem-vindo!
Nota: ClearPath é um recurso educacional independente, criado por membros fiéis para apoiar líderes, famílias e profissionais. Não é afiliado nem oficialmente endossado pela Igreja de Jesus Cristo dos Santos dos Últimos Dias.

Cada caminho para a clareza começa com um primeiro passo. O seu começa aqui.
:::
```

### **Italiano:**
```markdown
::: tip Benvenuto!
Nota: ClearPath è una risorsa educativa indipendente, creata da membri fedeli per supportare leader, famiglie e professionisti. Non è affiliata né ufficialmente approvata dalla Chiesa di Gesù Cristo dei Santi degli Ultimi Giorni.

Ogni percorso verso la chiarezza inizia con un primo passo. Il tuo inizia qui.
:::
```

### **Français:**
```markdown
::: tip Bienvenue!
Note: ClearPath est une ressource éducative indépendante, créée par des membres fidèles pour soutenir les dirigeants, les familles et les professionnels. Elle n'est pas affiliée ni officiellement approuvée par l'Église de Jésus-Christ des Saints des Derniers Jours.

Chaque chemin vers la clarté commence par un premier pas. Le vôtre commence ici.
:::
```

### **Deutsch:**
```markdown
::: tip Willkommen!
Hinweis: ClearPath ist eine unabhängige Bildungsressource, die von treuen Mitgliedern erstellt wurde, um Führungskräfte, Familien und Fachleute zu unterstützen. Sie ist nicht mit der Kirche Jesu Christi der Heiligen der Letzten Tage verbunden oder wird von dieser offiziell unterstützt.

Jeder Weg zur Klarheit beginnt mit einem ersten Schritt. Deiner beginnt hier.
:::
```

### **Русский:**
```markdown
::: tip Добро пожаловать!
Примечание: ClearPath — это независимый образовательный ресурс, созданный верными членами для поддержки руководителей, семей и профессионалов. Он не связан и официально не одобрен Церковью Иисуса Христа Святых последних дней.

Каждый путь к ясности начинается с первого шага. Ваш начинается здесь.
:::
```

---

## ✅ VERIFICACIÓN

Después de ejecutar los scripts:

### **1. Verificar archivos en ruso creados:**
```powershell
Get-ChildItem docs\ru\*.md | Measure-Object
```
Debe mostrar: ~54 archivos

### **2. Verificar disclaimer agregado:**
```powershell
# Ejemplo: verificar un archivo en español
Get-Content docs\es\index.md -Tail 10
```
Debe mostrar el disclaimer al final

### **3. Probar el sitio:**
```powershell
npm run dev
```
Abre: `http://localhost:5173/`
- Cambia a idioma ruso en el selector
- Verifica que aparece "Русский"
- Verifica que las páginas tienen el disclaimer

---

## 📊 RESULTADO ESPERADO

| Idioma | Archivos totales | Disclaimer |
|--------|------------------|------------|
| Español (es) | 54 | ✅ Agregado |
| English (en) | 54 | ✅ Agregado |
| Português (pt) | 54 | ✅ Agregado |
| Italiano (it) | 54 | ✅ Agregado |
| Français (fr) | 54 | ✅ Agregado |
| Deutsch (de) | 54 | ✅ Agregado |
| **Русский (ru)** | **54** | **✅ Creado con disclaimer** |
| **TOTAL** | **378 archivos** | **✅ COMPLETO** |

---

## 🎯 ORDEN DE EJECUCIÓN

```powershell
# 1. Ir a ClearPath
cd C:\Users\aparada\ClearPath

# 2. Crear archivos en ruso
.\ReportesIA\scripts\create-russian-files.ps1

# 3. Agregar disclaimer en todos los idiomas
.\ReportesIA\scripts\agregar-disclaimer-todas-paginas.ps1

# 4. Probar
npm run dev
```

---

## 📋 CHECKLIST

- [ ] Ejecutar `create-russian-files.ps1`
- [ ] Verificar que se crearon 54 archivos en `docs/ru/`
- [ ] Ejecutar `agregar-disclaimer-todas-paginas.ps1`
- [ ] Verificar que se actualizaron ~378 archivos
- [ ] Probar sitio en navegador
- [ ] Cambiar a idioma ruso y verificar
- [ ] Verificar que todas las páginas tienen disclaimer

---

**¡Listo para ejecutar!** 🚀

Ejecuta los dos scripts en orden y el disclaimer estará en todas las páginas de todos los idiomas.


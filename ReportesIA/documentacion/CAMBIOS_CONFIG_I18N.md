# 📝 Cambios Necesarios en config.mts

## Archivo: `docs/.vitepress/config.mts`

Después de renombrar los archivos, debes actualizar TODAS las referencias en el archivo de configuración.

---

## 🔴 CAMBIOS CRÍTICOS EN NAV (Navegación)

### Español (`es`)
```typescript
// ANTES (líneas 25-28):
{ text: 'TEPT', link: '/es/TEPT' },
{ text: 'PRENC', link: '/es/PRENC' },
{ text: 'Autismo', link: '/es/Autismo' },
{ text: 'Tourette', link: '/es/Tourette' },

// DESPUÉS:
{ text: 'TEPT', link: '/es/tept' },
{ text: 'PRENC', link: '/es/prenc' },
{ text: 'Autismo', link: '/es/autismo' },
{ text: 'Tourette', link: '/es/tourette' },
```

### Inglés (`en`)
```typescript
// ANTES (líneas 41-44):
{ text: 'PTSD', link: '/en/TEPT' },
{ text: 'PRENC', link: '/en/PRENC' },
{ text: 'Autism', link: '/en/Autismo' },
{ text: 'Tourette', link: '/en/Tourette' },

// DESPUÉS:
{ text: 'PTSD', link: '/en/tept' },
{ text: 'PRENC', link: '/en/prenc' },
{ text: 'Autism', link: '/en/autismo' },
{ text: 'Tourette', link: '/en/tourette' },
```

### Portugués (`pt`)
```typescript
// ANTES (líneas ~49-53):
{ text: 'TEPT', link: '/pt/TEPT' },
{ text: 'PRENC', link: '/pt/PRENC' },
{ text: 'Autismo', link: '/pt/Autismo' },
{ text: 'Tourette', link: '/pt/Tourette' },

// DESPUÉS:
{ text: 'TEPT', link: '/pt/tept' },
{ text: 'PRENC', link: '/pt/prenc' },
{ text: 'Autismo', link: '/pt/autismo' },
{ text: 'Tourette', link: '/pt/tourette' },
```

---

## 🔴 CAMBIOS CRÍTICOS EN SIDEBAR (Menú Lateral)

### Español - Sidebar (`/es/`)
```typescript
// ANTES (líneas 78-81):
{ text: '¿Qué es TEPT?', link: '/es/TEPT' },
{ text: '¿Qué es PRENC?', link: '/es/PRENC' },
{ text: '¿Qué es Autismo?', link: '/es/Autismo' },
{ text: '¿Qué es Tourette?', link: '/es/Tourette' }

// DESPUÉS:
{ text: '¿Qué es TEPT?', link: '/es/tept' },
{ text: '¿Qué es PRENC?', link: '/es/prenc' },
{ text: '¿Qué es Autismo?', link: '/es/autismo' },
{ text: '¿Qué es Tourette?', link: '/es/tourette' }
```

### Inglés - Sidebar (`/en/`)
```typescript
// ANTES (líneas ~145-148):
{ text: 'What is PTSD?', link: '/en/TEPT' },
{ text: 'What is PRENC?', link: '/en/PRENC' },
{ text: 'What is Autism?', link: '/en/Autismo' },
{ text: 'What is Tourette?', link: '/en/Tourette' }

// DESPUÉS:
{ text: 'What is PTSD?', link: '/en/tept' },
{ text: 'What is PRENC?', link: '/en/prenc' },
{ text: 'What is Autism?', link: '/en/autismo' },
{ text: 'What is Tourette?', link: '/en/tourette' }
```

### Portugués - Sidebar (`/pt/`)
```typescript
// ANTES (líneas ~212-215):
{ text: 'O que é TEPT?', link: '/pt/TEPT' },
{ text: 'O que é PRENC?', link: '/pt/PRENC' },
{ text: 'O que é Autismo?', link: '/pt/Autismo' },
{ text: 'O que é Tourette?', link: '/pt/Tourette' }

// DESPUÉS:
{ text: 'O que é TEPT?', link: '/pt/tept' },
{ text: 'O que é PRENC?', link: '/pt/prenc' },
{ text: 'O que é Autismo?', link: '/pt/autismo' },
{ text: 'O que é Tourette?', link: '/pt/tourette' }
```

---

## 🔍 BUSCAR Y REEMPLAZAR (Search & Replace)

Usa estos comandos de búsqueda y reemplazo en tu editor:

### Para Español:
```
Buscar: /es/TEPT        → Reemplazar: /es/tept
Buscar: /es/PRENC       → Reemplazar: /es/prenc
Buscar: /es/Autismo     → Reemplazar: /es/autismo
Buscar: /es/Tourette    → Reemplazar: /es/tourette
```

### Para Inglés:
```
Buscar: /en/TEPT        → Reemplazar: /en/tept
Buscar: /en/PRENC       → Reemplazar: /en/prenc
Buscar: /en/Autismo     → Reemplazar: /en/autismo
Buscar: /en/Tourette    → Reemplazar: /en/tourette
```

### Para Portugués:
```
Buscar: /pt/TEPT        → Reemplazar: /pt/tept
Buscar: /pt/PRENC       → Reemplazar: /pt/prenc
Buscar: /pt/Autismo     → Reemplazar: /pt/autismo
Buscar: /pt/Tourette    → Reemplazar: /pt/tourette
Buscar: /pt/PTSD        → Reemplazar: /pt/ptsd
```

---

## ⚡ Script PowerShell para Actualizar config.mts Automáticamente

```powershell
# Actualizar config.mts
$configPath = "C:\Users\aparada\ClearPath\docs\.vitepress\config.mts"
$content = Get-Content $configPath -Raw

# Español
$content = $content -replace "/es/TEPT", "/es/tept"
$content = $content -replace "/es/PRENC", "/es/prenc"
$content = $content -replace "/es/Autismo", "/es/autismo"
$content = $content -replace "/es/Tourette", "/es/tourette"

# Inglés
$content = $content -replace "/en/TEPT", "/en/tept"
$content = $content -replace "/en/PRENC", "/en/prenc"
$content = $content -replace "/en/Autismo", "/en/autismo"
$content = $content -replace "/en/Tourette", "/en/tourette"

# Portugués
$content = $content -replace "/pt/TEPT", "/pt/tept"
$content = $content -replace "/pt/PRENC", "/pt/prenc"
$content = $content -replace "/pt/Autismo", "/pt/autismo"
$content = $content -replace "/pt/Tourette", "/pt/tourette"
$content = $content -replace "/pt/PTSD", "/pt/ptsd"

# Guardar cambios
$content | Set-Content $configPath -Encoding UTF8

Write-Host "✅ config.mts actualizado correctamente" -ForegroundColor Green
```

---

## ✅ Verificación Post-Cambios

Después de hacer los cambios, ejecuta:

```bash
# 1. Verificar que no haya errores de sintaxis
npm run build

# 2. Probar en modo desarrollo
npm run dev

# 3. Verificar que todos los enlaces funcionen
# Navega manualmente por el sitio y verifica cada enlace
```

---

## 📊 Resumen de Cambios

| Sección | Idioma | Enlaces a Actualizar |
|---------|--------|---------------------|
| Nav | ES | 4 |
| Nav | EN | 4 |
| Nav | PT | 4 |
| Sidebar | ES | 4 |
| Sidebar | EN | 4 |
| Sidebar | PT | 4 |
| **TOTAL** | | **24 enlaces** |

---

## ⚠️ IMPORTANTE

**NO olvides:**
1. ✅ Renombrar los archivos PRIMERO (`fix-filenames.ps1`)
2. ✅ Actualizar config.mts (este documento)
3. ✅ Buscar enlaces internos en archivos `.md`
4. ✅ Hacer un build de prueba
5. ✅ Commit de todos los cambios juntos

---

**Fecha:** 30 de octubre, 2025


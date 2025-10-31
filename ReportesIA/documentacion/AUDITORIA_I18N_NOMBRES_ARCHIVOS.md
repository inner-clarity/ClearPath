# 🔍 Auditoría de Nombres de Archivos - ClearPath

## 📋 Regla de Convención de Nombres

Según las reglas de i18n de ClearPath:
> Todos los archivos de contenido (`.md`, `.mdx`) deben tener nombres en **minúsculas**, sin espacios ni caracteres especiales (usar guiones `-` como separador si es necesario).

---

## ❌ Archivos con Nombres INCORRECTOS Detectados

### 📁 Español (`docs/es/`) - 54 archivos totales

| ❌ Nombre ACTUAL (Incorrecto) | ✅ Nombre CORRECTO | Estado |
|-------------------------------|-------------------|---------|
| `Autism.md` | `autism.md` | ⚠️ Mayúscula inicial |
| `Autismo.md` | `autismo.md` | ⚠️ Mayúscula inicial |
| `PRENC.md` | `prenc.md` | ⚠️ Todo mayúsculas |
| `PRENCLista.md` | `prenc-lista.md` | ⚠️ Mayúsculas + sin guión |
| `PTSD.md` | `ptsd.md` | ⚠️ Todo mayúsculas |
| `TEPT.md` | `tept.md` | ⚠️ Todo mayúsculas |
| `Tourette.md` | `tourette.md` | ⚠️ Mayúscula inicial |

**Total de archivos incorrectos en ES: 7 de 54 (13%)**

---

### 📁 Inglés (`docs/en/`) - 27 archivos totales

| ❌ Nombre ACTUAL (Incorrecto) | ✅ Nombre CORRECTO | Estado |
|-------------------------------|-------------------|---------|
| `Autism.md` | `autism.md` | ⚠️ Mayúscula inicial |
| `Autismo.md` | `autismo.md` | ⚠️ Mayúscula inicial |
| `PRENC.md` | `prenc.md` | ⚠️ Todo mayúsculas |
| `PRENCList.md` | `prenc-list.md` | ⚠️ Mayúsculas + sin guión |
| `TEPT.md` | `tept.md` | ⚠️ Todo mayúsculas |
| `Tourette.md` | `tourette.md` | ⚠️ Mayúscula inicial |

**Total de archivos incorrectos en EN: 6 de 27 (22%)**

---

### 📁 Portugués (`docs/pt/`) - 29 archivos totales

| ❌ Nombre ACTUAL (Incorrecto) | ✅ Nombre CORRECTO | Estado |
|-------------------------------|-------------------|---------|
| `Autism.md` | `autism.md` | ⚠️ Mayúscula inicial |
| `Autismo.md` | `autismo.md` | ⚠️ Mayúscula inicial |
| `PRENC.md` | `prenc.md` | ⚠️ Todo mayúsculas |
| `PRENCLista.md` | `prenc-lista.md` | ⚠️ Mayúsculas + sin guión |
| `PTSD.md` | `ptsd.md` | ⚠️ Todo mayúsculas |
| `TEPT.md` | `tept.md` | ⚠️ Todo mayúsculas |
| `Tourette.md` | `tourette.md` | ⚠️ Mayúscula inicial |

**Total de archivos incorrectos en PT: 7 de 29 (24%)**

---

## 📊 Resumen General

| Idioma | Total Archivos | Incorrectos | % Error |
|--------|---------------|-------------|---------|
| 🇪🇸 Español (es) | 54 | 7 | 13% |
| 🇬🇧 Inglés (en) | 27 | 6 | 22% |
| 🇧🇷 Portugués (pt) | 29 | 7 | 24% |
| **TOTAL** | **110** | **20** | **18%** |

---

## ⚠️ IMPACTO CRÍTICO

Al renombrar estos archivos, se deben actualizar:

### 1. 🔗 **Enlaces internos** en todos los archivos `.md`
- Cualquier referencia a estos archivos debe actualizarse
- Ejemplo: `[TEPT](./TEPT.md)` → `[TEPT](./tept.md)`

### 2. 📝 **Configuración de VitePress** (`docs/.vitepress/config.mts`)
- Actualizar todas las rutas en:
  - `themeConfig.nav`
  - `themeConfig.sidebar`
- Ejemplo: `link: '/es/TEPT'` → `link: '/es/tept'`

### 3. 🧭 **Frontmatter y metadatos**
- Verificar que no haya referencias hardcoded en el frontmatter

---

## ✅ Archivos que YA están CORRECTOS

Ejemplos de archivos con nombres correctos:
- ✅ `busqueda-ayuda.md`
- ✅ `mitos-adultos-mayores.md`
- ✅ `mitos-amistad-continuacion.md`
- ✅ `mitos-amor.md`
- ✅ `mitos-generales-1.md`
- ✅ `index.md`
- ✅ `myths.md`
- ✅ `readme.md`
- ✅ Todos los archivos `mitos-*.md`

**Estos 90 archivos (82%) ya cumplen con la convención correcta.**

---

## 🚀 Plan de Acción Recomendado

### Opción 1: Renombrado Manual Seguro (Recomendado)
1. Crear un backup antes de comenzar
2. Renombrar archivos uno por uno
3. Actualizar configuración de VitePress
4. Actualizar enlaces internos
5. Probar el build: `npm run build`
6. Verificar que todo funcione

### Opción 2: Script Automatizado (Más rápido pero riesgoso)
Crear un script de PowerShell que:
1. Renombre todos los archivos
2. Actualice el config.mts
3. Busque y reemplace todos los enlaces

### Opción 3: Renombrado Git-Aware
Usar `git mv` para mantener el historial:
```bash
git mv docs/es/TEPT.md docs/es/tept.md
```

---

## ⚙️ Comandos de Renombrado

### Para ejecutar el renombrado (PowerShell):

```powershell
# Español
cd C:\Users\aparada\ClearPath\docs\es
Rename-Item -Path "Autism.md" -NewName "autism.md"
Rename-Item -Path "Autismo.md" -NewName "autismo.md"
Rename-Item -Path "PRENC.md" -NewName "prenc.md"
Rename-Item -Path "PRENCLista.md" -NewName "prenc-lista.md"
Rename-Item -Path "PTSD.md" -NewName "ptsd.md"
Rename-Item -Path "TEPT.md" -NewName "tept.md"
Rename-Item -Path "Tourette.md" -NewName "tourette.md"

# Inglés
cd C:\Users\aparada\ClearPath\docs\en
Rename-Item -Path "Autism.md" -NewName "autism.md"
Rename-Item -Path "Autismo.md" -NewName "autismo.md"
Rename-Item -Path "PRENC.md" -NewName "prenc.md"
Rename-Item -Path "PRENCList.md" -NewName "prenc-list.md"
Rename-Item -Path "TEPT.md" -NewName "tept.md"
Rename-Item -Path "Tourette.md" -NewName "tourette.md"

# Portugués
cd C:\Users\aparada\ClearPath\docs\pt
Rename-Item -Path "Autism.md" -NewName "autism.md"
Rename-Item -Path "Autismo.md" -NewName "autismo.md"
Rename-Item -Path "PRENC.md" -NewName "prenc.md"
Rename-Item -Path "PRENCLista.md" -NewName "prenc-lista.md"
Rename-Item -Path "PTSD.md" -NewName "ptsd.md"
Rename-Item -Path "TEPT.md" -NewName "tept.md"
Rename-Item -Path "Tourette.md" -NewName "tourette.md"
```

---

## 📝 Notas Adicionales

1. **Codificación**: Todos los archivos revisados están en UTF-8 ✅
2. **Caracteres especiales**: No se detectaron problemas con acentos (á, é, í, ó, ú, ñ) ✅
3. **Espacios en nombres**: No se detectaron archivos con espacios ✅
4. **Guiones**: Se usa correctamente el guión `-` como separador ✅

---

## 🎯 Prioridad de Corrección

### 🔴 ALTA PRIORIDAD (Afectan navegación principal):
- `TEPT.md` → `tept.md` (mencionado en nav)
- `PRENC.md` → `prenc.md` (mencionado en nav)
- `Autismo.md` → `autismo.md` (mencionado en nav)
- `Tourette.md` → `tourette.md` (mencionado en nav)

### 🟡 MEDIA PRIORIDAD (Archivos de referencia):
- `PRENCLista.md` → `prenc-lista.md`
- `PRENCList.md` → `prenc-list.md`

### 🟢 BAJA PRIORIDAD (Archivos auxiliares):
- `Autism.md` → `autism.md`
- `PTSD.md` → `ptsd.md`

---

**Fecha de auditoría:** 30 de octubre, 2025
**Versión VitePress:** 1.6.4
**Estado:** 🔴 Correcciones necesarias


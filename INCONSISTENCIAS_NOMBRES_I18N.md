# 🔍 INCONSISTENCIAS DE NOMBRES DE ARCHIVOS DETECTADAS

**Fecha:** 30 de octubre, 2025  
**Regla violada:** "Todos los archivos en todos los idiomas se llaman igual que en idioma español"

---

## 📊 RESUMEN

| Idioma | Archivos Inconsistentes | % del Total |
|--------|------------------------|-------------|
| 🇬🇧 Inglés | **17 archivos** | 63% |
| 🇧🇷 Portugués | **13 archivos** | 45% |
| **TOTAL** | **30 archivos** | **27% del proyecto** |

---

## ❌ INGLÉS - 17 Archivos a Renombrar

| ❌ Nombre ACTUAL (Inglés) | ✅ Nombre CORRECTO (Español) |
|---------------------------|------------------------------|
| `mitos-cultures-continuacion.md` | `mitos-culturas-continuacion.md` |
| `mitos-education.md` | `mitos-educacion.md` |
| `mitos-education-continuacion.md` | `mitos-educacion-continuacion.md` |
| `mitos-elderly.md` | `mitos-adultos-mayores.md` |
| `mitos-evolution-continuacion.md` | `mitos-evolucion-continuacion.md` |
| `mitos-family.md` | `mitos-familia.md` |
| `mitos-family-continuacion.md` | `mitos-familia-continuacion.md` |
| `mitos-fears-continuacion.md` | `mitos-miedos-continuacion.md` |
| `mitos-friendship.md` | `mitos-amistad.md` |
| `mitos-friendship-continuacion.md` | `mitos-amistad-continuacion.md` |
| `mitos-life-stages-continuacion.md` | `mitos-etapas-de-la-vida-continuacion.md` |
| `mitos-love.md` | `mitos-amor.md` |
| `mitos-love-continuacion.md` | `mitos-amor-continuacion.md` |
| `mitos-social-classes-continuacion.md` | `mitos-clases-sociales-continuacion.md` |
| `mitos-workplace.md` | `mitos-laboral.md` |
| `mitos-workplace-continuacion.md` | `mitos-laboral-continuacion.md` |
| `prenc-list.md` | `prenc-lista.md` |

---

## ❌ PORTUGUÉS - 13 Archivos a Renombrar

| ❌ Nombre ACTUAL (Portugués) | ✅ Nombre CORRECTO (Español) |
|------------------------------|------------------------------|
| `mitos-amistade.md` | `mitos-amistad.md` |
| `mitos-amistade-continuacao.md` | `mitos-amistad-continuacion.md` |
| `mitos-amor-continuacao.md` | `mitos-amor-continuacion.md` |
| `mitos-classes-sociais-continuacao.md` | `mitos-clases-sociales-continuacion.md` |
| `mitos-culturas-continuacao.md` | `mitos-culturas-continuacion.md` |
| `mitos-educacao.md` | `mitos-educacion.md` |
| `mitos-educacao-continuacao.md` | `mitos-educacion-continuacion.md` |
| `mitos-etapas-da-vida-continuacao.md` | `mitos-etapas-de-la-vida-continuacion.md` |
| `mitos-evolucao-continuacao.md` | `mitos-evolucion-continuacion.md` |
| `mitos-familia-continuacao.md` | `mitos-familia-continuacion.md` |
| `mitos-gerais-1.md` | `mitos-generales-1.md` |
| `mitos-laboral-continuacao.md` | `mitos-laboral-continuacion.md` |
| `mitos-medos-continuacao.md` | `mitos-miedos-continuacion.md` |

---

## 🎯 PRINCIPIO I18N

> **"Todos los archivos en todos los idiomas se llaman igual que en idioma español"**

Esto significa:
- ✅ **Nombre del archivo:** MISMO en todos los idiomas (español)
- ✅ **Contenido interno:** TRADUCIDO a cada idioma
- ✅ **URLs:** Consistentes entre idiomas

### Ejemplo Correcto:

**Español:** `docs/es/mitos-amor.md`
```markdown
# Mitos sobre el Amor
Contenido en español...
```

**Inglés:** `docs/en/mitos-amor.md` ← ¡MISMO NOMBRE!
```markdown
# Myths about Love
Content in English...
```

**Portugués:** `docs/pt/mitos-amor.md` ← ¡MISMO NOMBRE!
```markdown
# Mitos sobre o Amor
Conteúdo em português...
```

---

## 📝 ACCIONES REQUERIDAS

1. ✅ Renombrar 17 archivos en inglés
2. ✅ Renombrar 13 archivos en portugués
3. ✅ Actualizar config.mts con los nuevos nombres
4. ✅ Verificar build
5. ✅ Desplegar cambios

---

**Total de renombrados necesarios:** 30 archivos


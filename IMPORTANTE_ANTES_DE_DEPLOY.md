# ⚠️ IMPORTANTE: Antes de hacer Deploy a GitHub Pages

**CRÍTICO:** Cambiar base URL antes de desplegar a producción

---

## 🔴 PASO OBLIGATORIO ANTES DE `npm run build`

### **En ClearPath:**

Abre `docs/.vitepress/config.mts` y cambia la línea 8:

```typescript
// DESARROLLO (actual):
base: '/',

// PRODUCCIÓN (cambiar a esto antes de build):
base: '/ClearPath/',
```

---

### **En InnerSight:**

Abre `docs/.vitepress/config.mts` y cambia la línea 5:

```typescript
// DESARROLLO (actual):
base: '/',

// PRODUCCIÓN (cambiar a esto antes de build):
base: '/InnerSight/',
```

---

## 🚀 PROCESO CORRECTO DE DEPLOY

### **ClearPath:**

```cmd
1. Abrir docs/.vitepress/config.mts
2. Cambiar: base: '/' → base: '/ClearPath/',
3. Guardar archivo
4. Ejecutar: update-site.bat
5. Después del deploy, revertir: base: '/ClearPath/' → base: '/',
```

### **InnerSight:**

```cmd
1. Abrir docs/.vitepress/config.mts
2. Cambiar: base: '/' → base: '/InnerSight/',
3. Guardar archivo
4. Ejecutar: update-site.bat
5. Después del deploy, revertir: base: '/InnerSight/' → base: '/',
```

---

## ⚡ ALTERNATIVA: Scripts automáticos

He creado scripts que hacen el cambio automáticamente (por hacer):

- `deploy-production.bat` - Cambia base, hace build y deploy, revierte
- `deploy-auto.ps1` - Automatiza todo el proceso

---

## 🎯 ¿POR QUÉ ESTO?

**Desarrollo local:**
- base: '/' → URLs: `localhost:5173/`
- Más limpio y sin errores

**GitHub Pages:**
- base: '/ClearPath/' → URLs: `inner-clarity.github.io/ClearPath/`
- Necesario para que funcione en GitHub

---

**¡NO OLVIDES CAMBIAR EL BASE ANTES DE HACER DEPLOY!** ⚠️


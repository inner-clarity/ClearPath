---
layout: home
---

<script setup>
import { onMounted } from 'vue'

onMounted(() => {
  // Detectar idioma del navegador y redirigir
  const userLang = navigator.language || navigator.userLanguage
  
  if (userLang.startsWith('en')) {
    window.location.href = '/en/'
  } else if (userLang.startsWith('pt')) {
    window.location.href = '/pt/'
  } else {
    // Por defecto español
    window.location.href = '/es/'
  }
})
</script>

# Redirigiendo...

Por favor espera mientras te redirigimos a tu idioma preferido.

- [Español](/es/)
- [English](/en/)
- [Português](/pt/)

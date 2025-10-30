import DefaultTheme from 'vitepress/theme'
import { h } from 'vue'
import type { Theme } from 'vitepress'

import './style.css'

const theme: Theme = {
  extends: DefaultTheme,
  Layout: () => {
    return h(DefaultTheme.Layout, null, {
      // Puedes personalizar slots aquí si necesitas
    })
  },
  enhanceApp({ app }) {
    // Registrar componentes globales si los necesitas
  }
}

export default theme

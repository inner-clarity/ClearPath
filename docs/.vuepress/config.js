import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'ClearPath',
  description: 'Documentation and Resources',
  base: '/ClearPath/',
  
  locales: {
    root: {
      label: 'English',
      lang: 'en-US',
      title: 'ClearPath',
      description: 'Documentation and Resources'
    },
    es: {
      label: 'Español',
      lang: 'es-ES',
      title: 'ClearPath',
      description: 'Documentación y Recursos',
      link: '/es/'
    }
  },

  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide/' },
      { text: 'About', link: '/about/' }
    ],
    
    sidebar: {
      '/guide/': [
        {
          text: 'Guide',
          items: [
            { text: 'Introduction', link: '/guide/' },
            { text: 'Getting Started', link: '/guide/getting-started' }
          ]
        }
      ],
      '/es/guide/': [
        {
          text: 'Guía',
          items: [
            { text: 'Introducción', link: '/es/guide/' },
            { text: 'Comenzando', link: '/es/guide/getting-started' }
          ]
        }
      ]
    },
    
    socialLinks: [
      { icon: 'github', link: 'https://github.com/inner-clarity/ClearPath' }
    ],
    
    editLink: {
      pattern: 'https://github.com/inner-clarity/ClearPath/edit/main/docs/:path',
      text: 'Edit this page on GitHub'
    },
    
    footer: {
      message: 'Released under the MIT License.',
      copyright: 'Copyright © 2025 ClearPath'
    }
  }
})


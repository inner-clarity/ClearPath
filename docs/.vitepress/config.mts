import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'ClearPath',
  description: 'Respuestas claras para corazones confundidos',
  
  // Base URL: '/' para desarrollo local, '/ClearPath/' para GitHub Pages
  base: process.env.NODE_ENV === 'production' ? '/ClearPath/' : '/',
  
  // Ignorar enlaces muertos temporalmente
  ignoreDeadLinks: true,
  
  // Excluir directorios de backup del build
  srcExclude: ['**/*-backup*/**', '**/*.old'],
  
  // Configuración i18n - todos los idiomas con prefijo para selector visible
  locales: {
    es: {
      label: 'Español',
      lang: 'es',
      link: '/es/',
      themeConfig: {
        nav: [
          { text: 'Inicio', link: '/es/' },
          { text: 'TEPT', link: '/es/tept' },
          { text: 'PRENC', link: '/es/prenc' },
          { text: 'Autismo', link: '/es/autismo' },
          { text: 'Tourette', link: '/es/tourette' },
          { text: 'Mitos', link: '/es/mitos' },
          { text: 'Búsqueda', link: '/es/busqueda-ayuda' }
        ]
      }
    },
    en: {
      label: 'English',
      lang: 'en',
      link: '/en/',
      themeConfig: {
        nav: [
          { text: 'Home', link: '/en/' },
          { text: 'PTSD', link: '/en/tept' },
          { text: 'PRENC', link: '/en/prenc' },
          { text: 'Autism', link: '/en/autismo' },
          { text: 'Tourette', link: '/en/tourette' },
          { text: 'Myths', link: '/en/mitos' },
          { text: 'Search', link: '/en/busqueda-ayuda' }
        ]
      }
    },
    pt: {
      label: 'Português',
      lang: 'pt',
      link: '/pt/',
      themeConfig: {
        nav: [
          { text: 'Início', link: '/pt/' },
          { text: 'TEPT', link: '/pt/tept' },
          { text: 'PRENC', link: '/pt/prenc' },
          { text: 'Autismo', link: '/pt/autismo' },
          { text: 'Tourette', link: '/pt/tourette' },
          { text: 'Mitos', link: '/pt/mitos' },
          { text: 'Busca', link: '/pt/busqueda-ayuda' }
        ]
      }
    },
    it: {
      label: 'Italiano',
      lang: 'it',
      link: '/it/',
      themeConfig: {
        nav: [
          { text: 'Home', link: '/it/' },
          { text: 'PTSD', link: '/it/tept' },
          { text: 'PRENC', link: '/it/prenc' },
          { text: 'Autismo', link: '/it/autismo' },
          { text: 'Tourette', link: '/it/tourette' },
          { text: 'Miti', link: '/it/mitos' },
          { text: 'Ricerca', link: '/it/busqueda-ayuda' }
        ]
      }
    }
  },

  // Configuración global del tema
  themeConfig: {
    logo: 'https://inner-clarity.github.io/InnerSight/logo.svg',
    
    // Sidebar para español
    sidebar: {
      '/es/': [
        {
          text: 'Condiciones Principales',
          items: [
            { text: '¿Qué es TEPT?', link: '/es/tept' },
            { text: '¿Qué es PRENC?', link: '/es/prenc' },
            { text: '¿Qué es Autismo?', link: '/es/autismo' },
            { text: '¿Qué es Tourette?', link: '/es/tourette' }
          ]
        },
        {
          text: 'Mitos por Contexto de Vida',
          items: [
            { text: 'Vida sacramental', link: '/es/mitos-sacramental' },
            { text: 'Adolescencia y juventud', link: '/es/mitos-juventud' },
            { text: 'Bautismo y niños', link: '/es/mitos-bautismo' },
            { text: 'Adultos mayores', link: '/es/mitos-adultos-mayores' },
            { text: 'Etapas de la vida', link: '/es/mitos-etapas-de-la-vida' },
            { text: 'Etapas de la vida (cont.)', link: '/es/mitos-etapas-de-la-vida-continuacion' },
            { text: 'Culturas', link: '/es/mitos-culturas' },
            { text: 'Culturas (cont.)', link: '/es/mitos-culturas-continuacion' },
            { text: 'Clases Sociales', link: '/es/mitos-clases-sociales' },
            { text: 'Clases Sociales (cont.)', link: '/es/mitos-clases-sociales-continuacion' },
            { text: 'Efecto Laboral', link: '/es/mitos-laboral' },
            { text: 'Efecto Laboral (cont.)', link: '/es/mitos-laboral-continuacion' },
            { text: 'Crianza de hijos', link: '/es/mitos-crianza' },
            { text: 'Misión y servicio', link: '/es/mitos-mision' },
            { text: 'Duelo y pérdida', link: '/es/mitos-duelo' },
            { text: 'Oración y estudio', link: '/es/mitos-oracion' },
            { text: 'Liderazgo', link: '/es/mitos-liderazgo' },
            { text: 'Amor', link: '/es/mitos-amor' },
            { text: 'Amor (cont.)', link: '/es/mitos-amor-continuacion' },
            { text: 'Matrimonio', link: '/es/mitos-relaciones' },
            { text: 'Familia', link: '/es/mitos-familia' },
            { text: 'Familia (cont.)', link: '/es/mitos-familia-continuacion' },
            { text: 'Amistad', link: '/es/mitos-amistad' },
            { text: 'Amistad (cont.)', link: '/es/mitos-amistad-continuacion' },
            { text: 'Educación', link: '/es/mitos-educacion' },
            { text: 'Educación (cont.)', link: '/es/mitos-educacion-continuacion' },
            { text: 'Evolución', link: '/es/mitos-evolucion' },
            { text: 'Evolución (cont.)', link: '/es/mitos-evolucion-continuacion' },
            { text: 'Miedos', link: '/es/mitos-miedos' },
            { text: 'Miedos (cont.)', link: '/es/mitos-miedos-continuacion' }
          ]
        },
        {
          text: 'Mitos por Tipo de Confusión',
          items: [
            { text: 'P.R.E.N.C. y fetichismo', link: '/es/mitos-fetichismo' },
            { text: 'Internet y redes sociales', link: '/es/mitos-internet' },
            { text: 'Tecnología', link: '/es/mitos-tecnologia' },
            { text: 'Arrepentimiento', link: '/es/mitos-arrepentimiento' }
          ]
        },
        {
          text: 'Mitos Generales',
          items: [
            { text: 'Mitos 1–10', link: '/es/mitos-generales-1' },
            { text: 'Mitos 11–20', link: '/es/mitos-generales-2' },
            { text: 'Mitos 21–30', link: '/es/mitos-generales-3' },
            { text: 'Mitos 31–40', link: '/es/mitos-generales-4' },
            { text: 'Mitos 41–50', link: '/es/mitos-generales-5' },
            { text: 'Mitos 51–60 (Matrimonio)', link: '/es/mitos-generales-6' },
            { text: 'Mitos 61–70 (Familia)', link: '/es/mitos-generales-7' }
          ]
        }
      ],
      // Sidebar para inglés
      '/en/': [
        {
          text: 'Main Conditions',
          items: [
            { text: 'What is PTSD?', link: '/en/tept' },
            { text: 'What is PRENC?', link: '/en/prenc' },
            { text: 'What is Autism?', link: '/en/autismo' },
            { text: 'What is Tourette?', link: '/en/tourette' }
          ]
        },
        {
          text: 'Myths by Life Context',
          items: [
            { text: 'Sacramental life', link: '/en/mitos-sacramental' },
            { text: 'Adolescence and youth', link: '/en/mitos-juventud' },
            { text: 'Baptism and children', link: '/en/mitos-bautismo' },
            { text: 'Elderly adults', link: '/en/mitos-adultos-mayores' },
            { text: 'Life stages', link: '/en/mitos-etapas-de-la-vida' },
            { text: 'Life stages (cont.)', link: '/en/mitos-etapas-de-la-vida-continuacion' },
            { text: 'Cultures', link: '/en/mitos-culturas' },
            { text: 'Cultures (cont.)', link: '/en/mitos-culturas-continuacion' },
            { text: 'Social Classes', link: '/en/mitos-clases-sociales' },
            { text: 'Social Classes (cont.)', link: '/en/mitos-clases-sociales-continuacion' },
            { text: 'Work Impact', link: '/en/mitos-laboral' },
            { text: 'Work Impact (cont.)', link: '/en/mitos-laboral-continuacion' },
            { text: 'Raising children', link: '/en/mitos-crianza' },
            { text: 'Mission and service', link: '/en/mitos-mision' },
            { text: 'Grief and loss', link: '/en/mitos-duelo' },
            { text: 'Prayer and study', link: '/en/mitos-oracion' },
            { text: 'Leadership', link: '/en/mitos-liderazgo' },
            { text: 'Love', link: '/en/mitos-amor' },
            { text: 'Love (cont.)', link: '/en/mitos-amor-continuacion' },
            { text: 'Marriage', link: '/en/mitos-relaciones' },
            { text: 'Family', link: '/en/mitos-familia' },
            { text: 'Family (cont.)', link: '/en/mitos-familia-continuacion' },
            { text: 'Friendship', link: '/en/mitos-amistad' },
            { text: 'Friendship (cont.)', link: '/en/mitos-amistad-continuacion' },
            { text: 'Education', link: '/en/mitos-educacion' },
            { text: 'Education (cont.)', link: '/en/mitos-educacion-continuacion' },
            { text: 'Evolution', link: '/en/mitos-evolucion' },
            { text: 'Evolution (cont.)', link: '/en/mitos-evolucion-continuacion' },
            { text: 'Fears', link: '/en/mitos-miedos' },
            { text: 'Fears (cont.)', link: '/en/mitos-miedos-continuacion' }
          ]
        },
        {
          text: 'Myths by Type of Confusion',
          items: [
            { text: 'PRENC and fetishism', link: '/en/mitos-fetichismo' },
            { text: 'Internet and social media', link: '/en/mitos-internet' },
            { text: 'Technology', link: '/en/mitos-tecnologia' },
            { text: 'Repentance', link: '/en/mitos-arrepentimiento' }
          ]
        },
        {
          text: 'General Myths',
          items: [
            { text: 'Myths 1–10', link: '/en/mitos-generales-1' },
            { text: 'Myths 11–20', link: '/en/mitos-generales-2' },
            { text: 'Myths 21–30', link: '/en/mitos-generales-3' },
            { text: 'Myths 31–40', link: '/en/mitos-generales-4' },
            { text: 'Myths 41–50', link: '/en/mitos-generales-5' },
            { text: 'Myths 51–60 (Marriage)', link: '/en/mitos-generales-6' },
            { text: 'Myths 61–70 (Family)', link: '/en/mitos-generales-7' }
          ]
        }
      ],
      // Sidebar para portugués
      '/pt/': [
        {
          text: 'Condições Principais',
          items: [
            { text: 'O que é TEPT?', link: '/pt/tept' },
            { text: 'O que é PRENC?', link: '/pt/prenc' },
            { text: 'O que é Autismo?', link: '/pt/autismo' },
            { text: 'O que é Tourette?', link: '/pt/tourette' }
          ]
        },
        {
          text: 'Mitos por Contexto de Vida',
          items: [
            { text: 'Vida sacramental', link: '/pt/mitos-sacramental' },
            { text: 'Adolescência e juventude', link: '/pt/mitos-juventud' },
            { text: 'Batismo e crianças', link: '/pt/mitos-bautismo' },
            { text: 'Adultos idosos', link: '/pt/mitos-adultos-mayores' },
            { text: 'Etapas da vida', link: '/pt/mitos-etapas-de-la-vida' },
            { text: 'Etapas da vida (cont.)', link: '/pt/mitos-etapas-de-la-vida-continuacion' },
            { text: 'Culturas', link: '/pt/mitos-culturas' },
            { text: 'Culturas (cont.)', link: '/pt/mitos-culturas-continuacion' },
            { text: 'Classes Sociais', link: '/pt/mitos-clases-sociales' },
            { text: 'Classes Sociais (cont.)', link: '/pt/mitos-clases-sociales-continuacion' },
            { text: 'Impacto Laboral', link: '/pt/mitos-laboral' },
            { text: 'Impacto Laboral (cont.)', link: '/pt/mitos-laboral-continuacion' },
            { text: 'Criação de filhos', link: '/pt/mitos-crianza' },
            { text: 'Missão e serviço', link: '/pt/mitos-mision' },
            { text: 'Luto e perda', link: '/pt/mitos-duelo' },
            { text: 'Oração e estudo', link: '/pt/mitos-oracion' },
            { text: 'Liderança', link: '/pt/mitos-liderazgo' },
            { text: 'Amor', link: '/pt/mitos-amor' },
            { text: 'Amor (cont.)', link: '/pt/mitos-amor-continuacion' },
            { text: 'Casamento', link: '/pt/mitos-relaciones' },
            { text: 'Família', link: '/pt/mitos-familia' },
            { text: 'Família (cont.)', link: '/pt/mitos-familia-continuacion' },
            { text: 'Amizade', link: '/pt/mitos-amistad' },
            { text: 'Amizade (cont.)', link: '/pt/mitos-amistad-continuacion' },
            { text: 'Educação', link: '/pt/mitos-educacion' },
            { text: 'Educação (cont.)', link: '/pt/mitos-educacion-continuacion' },
            { text: 'Evolução', link: '/pt/mitos-evolucion' },
            { text: 'Evolução (cont.)', link: '/pt/mitos-evolucion-continuacion' },
            { text: 'Medos', link: '/pt/mitos-miedos' },
            { text: 'Medos (cont.)', link: '/pt/mitos-miedos-continuacion' }
          ]
        },
        {
          text: 'Mitos por Tipo de Confusão',
          items: [
            { text: 'P.R.E.N.C. e fetichismo', link: '/pt/mitos-fetichismo' },
            { text: 'Internet e redes sociais', link: '/pt/mitos-internet' },
            { text: 'Tecnologia', link: '/pt/mitos-tecnologia' },
            { text: 'Arrependimento', link: '/pt/mitos-arrependimento' }
          ]
        },
        {
          text: 'Mitos Gerais',
          items: [
            { text: 'Mitos 1–10', link: '/pt/mitos-generales-1' },
            { text: 'Mitos 11–20', link: '/pt/mitos-gerais-2' },
            { text: 'Mitos 21–30', link: '/pt/mitos-gerais-3' },
            { text: 'Mitos 31–40', link: '/pt/mitos-gerais-4' },
            { text: 'Mitos 41–50', link: '/pt/mitos-gerais-5' },
            { text: 'Mitos 51–60 (Casamento)', link: '/pt/mitos-gerais-6' },
            { text: 'Mitos 61–70 (Família)', link: '/pt/mitos-gerais-7' }
          ]
        }
      ],
      // Sidebar para italiano
      '/it/': [
        {
          text: 'Condizioni Principali',
          items: [
            { text: 'Che cos\'è il PTSD?', link: '/it/tept' },
            { text: 'Che cos\'è PRENC?', link: '/it/prenc' },
            { text: 'Che cos\'è l\'Autismo?', link: '/it/autismo' },
            { text: 'Che cos\'è la Tourette?', link: '/it/tourette' }
          ]
        },
        {
          text: 'Miti per Contesto di Vita',
          items: [
            { text: 'Vita sacramentale', link: '/it/mitos-sacramental' },
            { text: 'Adolescenza e gioventù', link: '/it/mitos-juventud' },
            { text: 'Battesimo e bambini', link: '/it/mitos-bautismo' },
            { text: 'Anziani', link: '/it/mitos-adultos-mayores' },
            { text: 'Fasi della vita', link: '/it/mitos-etapas-de-la-vida' },
            { text: 'Fasi della vita (cont.)', link: '/it/mitos-etapas-de-la-vida-continuacion' },
            { text: 'Culture', link: '/it/mitos-culturas' },
            { text: 'Culture (cont.)', link: '/it/mitos-culturas-continuacion' },
            { text: 'Classi Sociali', link: '/it/mitos-clases-sociales' },
            { text: 'Classi Sociali (cont.)', link: '/it/mitos-clases-sociales-continuacion' },
            { text: 'Impatto Lavorativo', link: '/it/mitos-laboral' },
            { text: 'Impatto Lavorativo (cont.)', link: '/it/mitos-laboral-continuacion' },
            { text: 'Crescere i figli', link: '/it/mitos-crianza' },
            { text: 'Missione e servizio', link: '/it/mitos-mision' },
            { text: 'Lutto e perdita', link: '/it/mitos-duelo' },
            { text: 'Preghiera e studio', link: '/it/mitos-oracion' },
            { text: 'Leadership', link: '/it/mitos-liderazgo' },
            { text: 'Amore', link: '/it/mitos-amor' },
            { text: 'Amore (cont.)', link: '/it/mitos-amor-continuacion' },
            { text: 'Matrimonio', link: '/it/mitos-relaciones' },
            { text: 'Famiglia', link: '/it/mitos-familia' },
            { text: 'Famiglia (cont.)', link: '/it/mitos-familia-continuacion' },
            { text: 'Amicizia', link: '/it/mitos-amistad' },
            { text: 'Amicizia (cont.)', link: '/it/mitos-amistad-continuacion' },
            { text: 'Educazione', link: '/it/mitos-educacion' },
            { text: 'Educazione (cont.)', link: '/it/mitos-educacion-continuacion' },
            { text: 'Evoluzione', link: '/it/mitos-evolucion' },
            { text: 'Evoluzione (cont.)', link: '/it/mitos-evolucion-continuacion' },
            { text: 'Paure', link: '/it/mitos-miedos' },
            { text: 'Paure (cont.)', link: '/it/mitos-miedos-continuacion' }
          ]
        },
        {
          text: 'Miti per Tipo di Confusione',
          items: [
            { text: 'P.R.E.N.C. e feticismo', link: '/it/mitos-fetichismo' },
            { text: 'Internet e social media', link: '/it/mitos-internet' },
            { text: 'Tecnologia', link: '/it/mitos-tecnologia' },
            { text: 'Pentimento', link: '/it/mitos-arrepentimiento' }
          ]
        },
        {
          text: 'Miti Generali',
          items: [
            { text: 'Miti 1–10', link: '/it/mitos-generales-1' },
            { text: 'Miti 11–20', link: '/it/mitos-generales-2' },
            { text: 'Miti 21–30', link: '/it/mitos-generales-3' },
            { text: 'Miti 31–40', link: '/it/mitos-generales-4' },
            { text: 'Miti 41–50', link: '/it/mitos-generales-5' },
            { text: 'Miti 51–60 (Matrimonio)', link: '/it/mitos-generales-6' },
            { text: 'Miti 61–70 (Famiglia)', link: '/it/mitos-generales-7' }
          ]
        }
      ]
    },
    
    socialLinks: [
      { icon: 'github', link: 'https://github.com/inner-clarity/ClearPath' }
    ],
    
    footer: {
      message: 'ClearPath es un recurso educativo independiente. No está afiliado oficialmente con La Iglesia de Jesucristo de los Santos de los Últimos Días.',
      copyright: '© 2024 ClearPath'
    },
    
    // Configuración de búsqueda
    search: {
    provider: 'local',
    options: {
      locales: {
        es: {
          translations: {
            button: {
              buttonText: 'Buscar',
              buttonAriaLabel: 'Buscar'
            },
            modal: {
              noResultsText: 'No se encontraron resultados',
              resetButtonTitle: 'Limpiar búsqueda',
              footer: {
                selectText: 'para seleccionar',
                navigateText: 'para navegar',
                closeText: 'para cerrar'
              }
            }
          }
        },
        en: {
          translations: {
            button: {
              buttonText: 'Search',
              buttonAriaLabel: 'Search'
            },
            modal: {
              noResultsText: 'No results found',
              resetButtonTitle: 'Clear search',
              footer: {
                selectText: 'to select',
                navigateText: 'to navigate',
                closeText: 'to close'
              }
            }
          }
        },
        pt: {
          translations: {
            button: {
              buttonText: 'Buscar',
              buttonAriaLabel: 'Buscar'
            },
            modal: {
              noResultsText: 'Nenhum resultado encontrado',
              resetButtonTitle: 'Limpar busca',
              footer: {
                selectText: 'para selecionar',
                navigateText: 'para navegar',
                closeText: 'para fechar'
              }
            }
          }
        },
        it: {
          translations: {
            button: {
              buttonText: 'Cerca',
              buttonAriaLabel: 'Cerca'
            },
            modal: {
              noResultsText: 'Nessun risultato trovato',
              resetButtonTitle: 'Cancella ricerca',
              footer: {
                selectText: 'per selezionare',
                navigateText: 'per navigare',
                closeText: 'per chiudere'
              }
            }
          }
        }
      }
    }
    }
  }
})

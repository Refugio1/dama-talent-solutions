# DAMA Talent Solutions — Design System Spec
## Para implementación en Figma

---

## 1. 🎨 Paleta de Colores

### Colores Primarios (Brand Blue)

| Token | Hex | Uso | Muestra |
|-------|-----|-----|---------|
| `Blue 900` | `#0E2A47` | Color primario principal. Navbar, botones dark, textos destacados, fondos hero oscuro | 🟦 Navy profundo |
| `Blue 700` | `#1F5AA6` | Hover de botones dark, acentos secundarios, timeline hover | 🟦 Azul medio |
| `Blue 500` | `#2C7BE5` | Focus de inputs, links activos, acentos interactivos | 🟦 Azul brillante |
| `Blue 100` | `#E7F0FF` | Hover de botón blanco, backgrounds sutiles, badges | 🟦 Azul muy claro |

### Colores Neutros

| Token | Hex | Uso |
|-------|-----|-----|
| `Neutral White` | `#FFFFFF` | Fondo de cards, textos sobre oscuro, botón white |
| `Neutral 50` | `#F7F9FC` | Fondo general del body / página |
| `Neutral 100` | `#F1F5F9` | Fondos alternados de secciones |
| `Neutral 300` | `#CBD5E1` | Bordes de cards, bordes de inputs, separadores |
| `Neutral 400` | `#94A3B8` | Bordes hover de cards bento |
| `Neutral 600` | `#64748B` | Texto secundario / meta / labels de form |
| `Neutral 900` | `#0F172A` | Texto principal del body |

### Colores Semánticos / Accent

| Token | Hex | Uso |
|-------|-----|-----|
| `Success` | `#10B981` | Indicadores de éxito, checkmarks |
| `Warning / Amber` | `#F59E0B` | Acentos hover de iconos SVG, badges, highlights |
| `Error` | `#EF4444` | Estados de error en formularios |
| `Teal` | `#1BB3A4` | Acento secundario decorativo |

### Colores de Overlay (con transparencia)

| Uso | Valor |
|-----|-------|
| Overlay oscuro fuerte | `rgba(15, 23, 42, 0.85)` — `brand-black/85` |
| Overlay medio | `rgba(15, 23, 42, 0.50)` — `brand-black/50` |
| Overlay suave | `rgba(15, 23, 42, 0.25)` — `brand-black/25` |
| Navbar backdrop | `rgba(255, 255, 255, 0.80)` + `backdrop-blur: 24px` |
| Border sutil | `rgba(0, 0, 0, 0.05)` |
| Border inputs oscuro | `rgba(255, 255, 255, 0.20)` |

---

## 2. 🔤 Tipografía

### Familias Tipográficas

| Rol | Fuente | Google Fonts URL |
|-----|--------|------------------|
| **Headings** | **Plus Jakarta Sans** | `Plus+Jakarta+Sans:wght@600;700` |
| **Body / UI** | **Inter** | `Inter:wght@300;400;500;600` |

> **En Figma**: Crear 2 Text Style Groups: `Heading/` y `Body/`

### Escala Tipográfica Completa

| Token | Tamaño | Line Height | Peso | Familia | Tracking | Uso |
|-------|--------|-------------|------|---------|----------|-----|
| `H1` | `48px` | `56px` | `700 Bold` | Plus Jakarta Sans | `-0.01em` | Títulos principales de página |
| `H1-Hero` | `clamp(36px, 5vw, 72px)` | `tight (1.05)` | `500 Medium` | Plus Jakarta Sans | `tight` | Hero responsive grande |
| `H2` | `36px` | `40px` | `600 SemiBold` | Plus Jakarta Sans | `-0.01em` | Títulos de sección |
| `H3` | `28px` | `32px` | `600 SemiBold` | Plus Jakarta Sans | `-0.01em` | Subtítulos, nombres de servicio |
| `Body` | `16px` | `1.68 (≈27px)` | `400 Regular` | Inter | `normal` | Texto corrido |
| `Body Light` | `16px` | `1.68` | `300 Light` | Inter | `normal` | Descripciones secundarias |
| `Body Medium` | `16px` | `1.68` | `500 Medium` | Inter | `normal` | Texto enfatizado |
| `Meta` | `14px` | `1.5 (21px)` | `400 Regular` | Inter | `normal` | Metadata, captions, microcopy |
| `Button` | `13.6px (0.85rem)` | `1.5` | `600 SemiBold` | Plus Jakarta Sans | `0.05em` | Texto de botones |
| `Label` | `12px (0.75rem)` | `1.5` | `500 Medium` | Inter | `0.05em` | Labels de form en focus, tags |
| `Overline` | `14px` | `1.5` | `700 Bold` | Inter | `0.1em (widest)` | Subtag encima de títulos |
| `Quote` | `clamp(24px, 4vw, 48px)` | `1.2` | `400 Regular` | Plus Jakarta Sans | `-0.02em` | Citas de testimonios |

---

## 3. 📐 Sistema de Espaciado

### Padding de Secciones

| Clase | Valor | Uso |
|-------|-------|-----|
| `section-padding` | `128px (8rem)` top/bottom | Secciones principales |
| `pb-6` | `24px` bottom | Hero header |
| `py-12` | `48px` top/bottom | Marquee / tiras intermedias |
| `py-20` | `80px` top/bottom | Secciones medianas |

### Contenedores

| Clase | Ancho máximo | Uso |
|-------|-------------|-----|
| `max-w-7xl` | `1280px` | Contenedor principal |
| `max-w-5xl` | `1024px` | Textos hero centrados |
| `max-w-4xl` | `896px` | Párrafos descriptivos |
| `max-w-3xl` | `768px` | Texto secundario hero |
| `max-w-xl` | `576px` | Contenido dentro de cards |

### Padding Interno

| Contexto | Valor |
|----------|-------|
| `px-4` (móvil) → `px-6` (sm) → `px-8` (lg) | Padding lateral responsive |
| Cards / Panels | `p-8` (32px) / `p-12` (48px) / `p-16` (64px) |
| Botones | `py-16px px-32px` (1rem 2rem) |

### Gaps

| Contexto | Valor |
|----------|-------|
| Entre botones | `gap-4` (16px) / `gap-6` (24px) |
| Grid items | `gap-6` (24px) / `gap-8` (32px) |
| Secciones internas | `gap-8` (32px) / `gap-12` (48px) |

---

## 4. 🧩 Componentes

### 4.1 Botones

Todos los botones comparten estas propiedades base:

```
Base (.btn-minimal):
├─ Display: inline-flex, align-items: center
├─ Gap: 12px (0.75rem)
├─ Padding: 16px 32px
├─ Border Radius: 100px (full pill)
├─ Font: Plus Jakarta Sans, 600, UPPERCASE
├─ Letter Spacing: 0.05em
├─ Font Size: 13.6px (0.85rem)
├─ Transition: 0.4s cubic-bezier(0.25, 1, 0.5, 1)
└─ Overflow: hidden
```

| Variante | Default | Hover | Icono |
|----------|---------|-------|-------|
| **btn-dark** | BG: `#0E2A47`, Text: `#FFF` | BG: `#1F5AA6`, translateY(-2px), shadow `0 10px 20px rgba(14,42,71,0.2)` | `→` arrow-right |
| **btn-outline** | BG: transparent, Border: `1px solid #CBD5E1`, Text: `#0E2A47` | BG: `#0E2A47`, Border: `#0E2A47`, Text: `#FFF` | `→` arrow-right |
| **btn-white** | BG: `#FFFFFF`, Text: `#0E2A47` | BG: `#E7F0FF`, Text: `#0E2A47` | `→` arrow-right |
| **btn-outline (white)** | BG: transparent, Border: `rgba(255,255,255,0.3)`, Text: `#FFF` | BG: `#FFF`, Border: `#FFF`, Text: `#0E2A47` | `→` arrow-right |

### 4.2 Navbar

```
Navbar:
├─ Position: Fixed, top: 0, z-index: 50
├─ Height: 96px (h-24)
├─ Background: rgba(255,255,255,0.8) + backdrop-blur: 24px
├─ Border Bottom: 1px solid rgba(0,0,0,0.05)
├─ Container: max-w-7xl centered
├─ Layout: flex justify-between align-center
│
├─ Logo area (left):
│   ├─ Logo Icon: 40x40px square, bg #0E2A47, rounded-xl
│   │   └─ Letter "D" — Plus Jakarta Sans Bold, 20px, #FFFFFF
│   └─ Brand Name: "DAMA" — Plus Jakarta Sans Bold, 24px, #0E2A47
│       └─ Subtitle: "talent solutions" — Inter, 10px, #64748B, tracking widest, uppercase
│
├─ Nav Links (center, hidden on mobile):
│   └─ Text: Inter, 14px, 500, #64748B
│       └─ Hover: color #0E2A47
│
├─ CTA Button (right):
│   └─ btn-dark (ver sección botones)
│
└─ Mobile Menu Button:
    └─ Hamburger icon, 24x24
```

### 4.3 Cards (Clean Bento)

```
.clean-bento:
├─ Background: #FFFFFF
├─ Border: 1px solid #CBD5E1
├─ Border Radius: 24px (rounded-3xl)
├─ Padding: 40px (p-10) / 48px (p-12)
├─ Transition: 0.4s ease
│
├─ Hover:
│   ├─ Border Color: #94A3B8
│   ├─ Box Shadow: 0 20px 40px -10px rgba(0,0,0,0.05)
│   └─ Transform: translateY(-5px)
│
└─ Content:
    ├─ Icon: 48x48 SVG (micro-animated on hover)
    ├─ Title: H3, 20px, SemiBold, #0F172A
    └─ Description: Body, 14-16px, Light/Regular, #64748B
```

### 4.4 Formularios (Minimal Input)

```
.minimal-input:
├─ Margin Bottom: 32px (2rem)
│
├─ Input/Textarea:
│   ├─ Background: transparent
│   ├─ Border: none (solo border-bottom)
│   ├─ Border Bottom: 1px solid rgba(15,23,42,0.2)
│   ├─ Padding: 16px 0
│   ├─ Font: Inter, 16px, 400, #0F172A
│   ├─ Focus → border-bottom-color: #2C7BE5
│   │
│   └─ Dark Mode (dentro de .dark-section):
│       ├─ Border Bottom: rgba(255,255,255,0.2)
│       └─ Color: #FFFFFF
│
└─ Label (floating):
    ├─ Default: position absolute, top 16px, left 0
    │   ├─ Color: #64748B
    │   └─ Font: Inter, 16px
    │
    └─ Focus/Filled: top -10px
        ├─ Font Size: 12px
        ├─ Color: #2C7BE5
        ├─ Weight: 500
        ├─ Letter Spacing: 0.05em
        └─ Text Transform: uppercase
```

### 4.5 FAQ Accordion

```
.faq-item:
├─ Question Button:
│   ├─ Padding: 24px 0
│   ├─ Font: Plus Jakarta Sans, 18px, 600, #0F172A
│   ├─ Border Bottom: 1px solid #E2E8F0
│   ├─ Layout: flex justify-between align-center
│   └─ Chevron Icon: fa-chevron-down, #64748B
│       └─ Active: rotate(180deg), transition 0.3s ease
│
└─ Answer Wrapper:
    ├─ display: grid
    ├─ grid-template-rows: 0fr → 1fr (active)
    ├─ transition: 0.35s cubic-bezier(0.4, 0, 0.2, 1)
    │
    └─ Answer Content:
        ├─ overflow: hidden
        ├─ Padding Bottom: 24px
        └─ Font: Inter, 16px, 400, #64748B, line-height 1.68
```

### 4.6 Timeline / Metodología

```
.timeline-step:
├─ Layout: flex items-start gap-24px
├─ Transition: 0.4s ease
│
├─ Number Circle:
│   ├─ Size: 48x48px
│   ├─ Border Radius: full (rounded-full)
│   ├─ Border: 2px solid #CBD5E1
│   ├─ Background: #FFFFFF
│   ├─ Font: Plus Jakarta Sans, 14px, Bold, #0E2A47
│   ├─ Display: flex center center
│   │
│   └─ Hover:
│       ├─ Background: #1F5AA6
│       ├─ Color: #FFFFFF
│       └─ Transform: scale(1.1)
│
└─ Content:
    ├─ Title: Plus Jakarta Sans, 18px, 600, #0F172A
    └─ Description: Inter, 14px, 400, #64748B
```

---

## 5. 🌊 Sombras

| Nombre | Valor CSS | Uso |
|--------|-----------|-----|
| `shadow-sm` | `0 1px 2px rgba(0,0,0,0.05)` | Cards sutiles |
| `shadow-lg` | `0 10px 15px -3px rgba(0,0,0,0.1)` | Cards elevadas |
| `shadow-2xl` | `0 25px 50px -12px rgba(0,0,0,0.25)` | Hero container |
| `btn-dark hover` | `0 10px 20px rgba(14,42,71,0.2)` | Botón oscuro hover |
| `bento hover` | `0 20px 40px -10px rgba(0,0,0,0.05)` | Cards bento grid |

---

## 6. 🔲 Border Radius

| Valor | Uso |
|-------|-----|
| `100px` (full pill) | Botones, badges, pills |
| `2rem` (32px) | Hero container, cards grandes |
| `1.5rem` (24px) | Cards bento (rounded-3xl) |
| `1rem` (16px) | Cards medianas (rounded-2xl) |
| `0.75rem` (12px) | Logo icon (rounded-xl) |
| `full` | Avatares, number circles |

---

## 7. ⚡ Animaciones y Transiciones

### Transiciones Base

| Elemento | Duración | Easing | Propiedades |
|----------|----------|--------|-------------|
| Botones | `400ms` | `cubic-bezier(0.25, 1, 0.5, 1)` | all |
| Cards (bento) | `400ms` | `ease` | all |
| Inputs | `300ms` | `ease` | all |
| FAQ accordion | `350ms` | `cubic-bezier(0.4, 0, 0.2, 1)` | grid-template-rows |
| FAQ chevron | `300ms` | `ease` | transform |
| Hero image zoom | `1000ms` | `ease` | transform (scale) |
| Timeline number | `300ms` | `ease` | all |

### Animaciones Keyframe

| Nombre | Tipo | Duración | Uso |
|--------|------|----------|-----|
| `float` | Infinite loop | `6s ease-in-out` | Elementos flotantes decorativos |
| `reveal` | Once | `1s cubic-bezier(0.77, 0, 0.175, 1)` | Aparición de elementos |
| `marquee` | Infinite loop | `30s linear` | Cinta de logos trusted-by |
| `spin` | Infinite loop | `3s linear` | Radar SVG icon |
| `pulse-dot` | Infinite loop | `1.5s ease-in-out` | Puntos radar SVG |

### AOS (Animate on Scroll) Settings

```
AOS.init({
    once: true,
    offset: 80,
    duration: 800,
    easing: 'ease-out-cubic'
});
```

| Animación AOS usada | Donde se aplica |
|---------------------|-----------------|
| `fade-up` | Secciones, cards, textos |
| `fade-right` | Columnas laterales |
| `fade-left` | Columnas sticky |
| `zoom-in` | Hero container |

---

## 8. 📱 Breakpoints Responsive

| Breakpoint | Ancho | Uso |
|------------|-------|-----|
| **Mobile** (default) | `< 640px` | Stack vertical, texto reducido |
| **sm** | `≥ 640px` | Ajustes menores |
| **md** | `≥ 768px` | Grid 2 columnas, hero split horizontal |
| **lg** | `≥ 1024px` | Grid 3-4 columnas, sidebar layouts, sticky |
| **xl** | `≥ 1280px` | Max container width |

---

## 9. 📄 Estructura de Páginas

### Page 1: Home (`index-split.html`)

```
Página: Home
├── Navbar (fixed, blur, h-24)
├── Hero Section
│   ├── Overline: "Executive Search" (amber accent, uppercase)
│   ├── H1: "Headhunting Ejecutivo para Sectores Técnicos en México."
│   ├── Body: descripción
│   ├── H2: "¿Cómo podemos ayudarte?"
│   └── Hero Image Container (rounded-2rem, shadow-2xl)
│       ├── Background: industrial_executive_hero.png
│       ├── Overlay gradient
│       ├── CTA: "Soy una Empresa (Busco Talento)" + microcopy
│       └── CTA: "Soy un Candidato (Cargar mi CV)" + microcopy
│
├── Trusted By Marquee (logos, animación infinita)
│
├── ¿Por qué DAMA? (Bento Grid 12 columnas)
│   ├── Card grande (span 8): Solucionamos el verdadero problema
│   └── Cards pequeñas (span 4): Estadísticas
│
├── Sectors Bento Grid (sticky left + scrollable right grid)
│   ├── Left: Sticky title "Sectores de Impacto"
│   └── Right: 6 sector cards con SVG micro-animated icons
│       ├── Energía & Oil & Gas
│       ├── Automotriz
│       ├── Aeroespacial & Defensa
│       ├── Manufactura Avanzada
│       ├── Infraestructura
│       └── Minería & Metales
│
├── Metodología (Cómo Trabajamos)
│   └── 5 pasos con timeline vertical
│
├── Testimonios (Swiper carousel)
│   └── Quote gigante + autor + rol
│
├── Contacto (Dark section)
│   ├── Left: Título + info
│   └── Right: Formulario con floating labels
│
└── Footer
```

### Page 2: Servicios (`servicios.html`)

```
Página: Servicios
├── Navbar (misma estructura)
├── Hero Section
│   ├── Badge: "Executive Search & Staffing"
│   ├── H1: título principal
│   ├── Body: descripción
│   └── Hero Image Container (aerospace_control.png)
│
├── Servicio 01: Executive Search & Headhunting
│   ├── Layout 2 columnas (texto + SVG radar animado)
│   ├── Lista de características con iconos
│   └── CTA
│
├── Servicio 02: Reclutamiento Técnico Especializado
│   ├── Layout 2 columnas inverso
│   ├── Lista de características
│   └── CTA
│
├── Metodología de Rigor Técnico
│   ├── Layout sticky: texto scroll izquierda, imagen fija derecha
│   └── 7 pasos del timeline
│
├── Garantías de Servicio
│   ├── 3 cards con SVG micro-animated icons
│   │   ├── Protección de inversión (shield)
│   │   ├── Esquemas personalizados (target)
│   │   └── Seguimiento post-colocación (handshake)
│   └── CTA final
│
├── FAQ Section
│   ├── Left: Ilustración SVG (faq_illustration.png)
│   └── Right: 5 acordeones con animación suave
│
├── Contacto (Dark section)
│
└── Footer
```

---

## 10. 🖼️ Assets / Imágenes

| Archivo | Dimensiones aprox. | Uso |
|---------|---------------------|-----|
| `industrial_executive_hero.png` | ~1440×900 | Hero principal index-split |
| `aerospace_control.png` | ~1440×900 | Hero servicios, sticky metodología |
| `hero-bg.png` | ~1440×900 | Hero parallax index-nyssa |
| `b2b_radar.png` | ~600×600 | SVG radar en servicio 01 |
| `b2c_roadmap.png` | ~600×600 | SVG roadmap en servicio 02 |
| `faq_illustration.png` | ~500×500 | Ilustración FAQ |
| `autor1.png` | ~200×200 | Avatar testimonio 1 |
| `autor2.png` | ~200×200 | Avatar testimonio 2 |
| `autor3.png` | ~200×200 | Avatar testimonio 3 |

---

## 11. 🎯 Checklist para armar en Figma

### Paso 1: Configurar Estilos Base
- [ ] Crear **Color Styles** con todos los colores de la Sección 1
- [ ] Crear **Text Styles** con todas las escalas de la Sección 2
- [ ] Crear **Effect Styles** con las sombras de la Sección 5

### Paso 2: Construir Componentes
- [ ] Componente **Button** con 4 variantes (dark, outline, white, outline-white) + estados (default, hover)
- [ ] Componente **Navbar** con auto-layout
- [ ] Componente **Card Bento** con hover state
- [ ] Componente **Form Input** (minimal-input) con estados (empty, focus, filled)
- [ ] Componente **FAQ Accordion Item** con estados (closed, open)
- [ ] Componente **Timeline Step** con número + contenido
- [ ] Componente **Footer**

### Paso 3: Armar Frames de Páginas
- [ ] Frame `Home Desktop` (1440×auto)
- [ ] Frame `Servicios Desktop` (1440×auto)
- [ ] Frame `Home Mobile` (375×auto)
- [ ] Frame `Servicios Mobile` (375×auto)

### Paso 4: Importar Assets
- [ ] Subir todas las imágenes PNG al proyecto de Figma
- [ ] Configurar como fills en los contenedores de hero

---

> **Tip**: Usa el plugin **"HTML to Figma" de Builder.io** para importar las páginas desde `localhost:8000` como capas editables, y luego reemplaza los estilos con los Color/Text Styles que creaste en el Paso 1.

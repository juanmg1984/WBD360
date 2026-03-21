# Data360 Embed

**Categoría 02 — Instant Visual Stories** · [Media Party Global Digital Challenge 360](https://mediaparty.org/en-global-digital-challenge-360/)

> Raw numbers don't tell stories; visualizations do.

Data360 Embed convierte datos del **Banco Mundial** en gráficos interactivos listos para publicar en cualquier CMS — tan simple como incrustar un video de YouTube.

---

## 🚀 Demo rápida

1. Abrí `configurador.html` en tu browser
2. Elegí un indicador, países y tipo de gráfico
3. Presioná **Actualizar previsualización**
4. Copiá el código `<iframe>` y pegalo en tu artículo

## 📁 Estructura

```
data360-embed/
├── configurador.html   # UI para armar el widget (Step 1–5)
├── widget.html         # El iframe embebible (el output)
├── proxy/
│   ├── proxy.py        # Proxy FastAPI para CORS (deploy en Render)
│   ├── requirements.txt
│   ├── render.yaml     # Config de deploy en Render.com
│   └── README.md
└── README.md
```

## 🔧 Tipos de gráfico soportados

| Tipo | Parámetro | Uso |
|------|-----------|-----|
| Línea de tiempo | `chart=line` | Evolución de un indicador a lo largo de los años |
| Barras horizontales | `chart=bar` | Comparación entre países en un año dado |
| Dispersión (scatter) | `chart=scatter` | Correlación entre dos indicadores |

## 📊 Indicadores disponibles

26 indicadores organizados en 6 temas:
- **Economía**: PIB per cápita, inflación, desempleo, deuda, exportaciones
- **Social**: Población, esperanza de vida, pobreza extrema, urbanización
- **Salud**: Gasto en salud, mortalidad infantil, camas hospitalarias
- **Educación**: Alfabetización, matrícula, gasto educativo
- **Medio Ambiente**: CO₂, energía renovable, superficie forestal
- **Digital**: Usuarios de Internet, móviles, banda ancha

## 🌍 Cobertura geográfica

38 países + 8 regiones/agregados (Mundo, Latinoamérica, OCDE, UE, etc.)  
Período histórico: **1960–2024**

## 🔗 Parámetros del widget

El widget (`widget.html`) acepta los siguientes parámetros por URL:

| Parámetro | Descripción | Ejemplo |
|-----------|-------------|---------|
| `chart` | Tipo de gráfico | `line`, `bar`, `scatter` |
| `indicator` | ID del indicador Data360 | `WB_WDI_SP_DYN_LE00_IN` |
| `indicator2` | Segundo indicador (scatter) | `WB_WDI_NY_GDP_PCAP_CD` |
| `areas` | Países separados por coma | `ARG,BRA,CHL` |
| `start` | Año inicio (línea) | `2000` |
| `end` | Año fin (línea) | `2023` |
| `year` | Año (barras/scatter) | `2022` |
| `title` | Título del gráfico | `Mi título` |
| `theme` | Tema visual | `light`, `dark` |
| `proxy` | URL del proxy CORS | `https://mi-proxy.onrender.com` |

### Ejemplo de embed

```html
<iframe
  src="https://tu-usuario.github.io/data360-embed/widget.html?chart=line&indicator=WB_WDI_SP_DYN_LE00_IN&areas=ARG,BRA,CHL,MEX&start=2000&end=2023&title=Esperanza+de+vida+en+Am%C3%A9rica+Latina"
  width="100%"
  height="460"
  frameborder="0"
  scrolling="no"
  style="border:none; border-radius:8px;"
  title="Visualización interactiva · World Bank Data360"
></iframe>
```

## 🛰️ Deploy

### Opción A — GitHub Pages (gratis, recomendado)
1. Fork este repo
2. Settings → Pages → Source: `main` branch
3. Tu configurador estará en `https://tu-usuario.github.io/data360-embed/configurador.html`

### Opción B — Netlify (gratis)
1. "New site from Git" → conectar repo
2. No se necesita build command
3. Configurar `configurador.html` como página de inicio

### Opción C — Para el proxy CORS (si la API da error en el browser)
Ver instrucciones en [proxy/README.md](proxy/README.md)

## 🏆 Competencia

Desarrollado para **Media Party Global Digital Challenge 360 — Categoría 02: Instant Visual Stories (Data Integration)**

Usa la [Data360 API del Banco Mundial](https://data360.worldbank.org) · Vega-Lite · HTML/JS puro (sin frameworks)

## 📄 Licencia

MIT

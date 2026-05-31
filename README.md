# LevelUp App Administrador

App web pública para administrar inventario, servicio técnico, importaciones, clientes, ventas y backups de LevelUp Repair Center.

## App publicada

Cuando GitHub Pages termine el primer despliegue, la app estará disponible en:

https://khrizkat7.github.io/LevelUp-App-Codex/

## Estado

- Frontend estático en `index.html`.
- Español y emojis incluidos.
- Guardado local con `localStorage`.
- Backup JSON exportable/importable.
- Conexión a Supabase para guardar y cargar backup en nube por usuario autenticado.

## Supabase

Proyecto conectado:

- URL: `https://gnkwgayrectwuivplaxa.supabase.co`
- Llave frontend: `sb_publishable_XJ5x90P2pYjHtHHAFP7LNA_Ezz7QoRf`

La app usa la tabla `public.levelup_settings` con RLS para usuarios autenticados.

## Publicación

Este repositorio incluye un workflow de GitHub Pages en `.github/workflows/pages.yml`.

Si la página no aparece automáticamente, entra a:

`Settings > Pages`

y selecciona GitHub Actions como fuente de publicación.

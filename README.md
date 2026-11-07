# Скрипковий ключ — Brio Music Studio

## Публікація на GitHub Pages
1. Логотип уже додано: `site/assets/logo.svg` (шапка і головна сторінка). Щоб замінити, підмініть цей файл.
2. Завантажте **вміст папки `site/`** (index.html, assets/, .nojekyll) у корінь репозиторію.
3. Settings → Pages → Deploy from a branch → `main` / `(root)`.

Працює і при відкритті `index.html` подвійним кліком (без сервера, без інтернету).

## Зміни в коді
У папці `source/`: `npm install && sh build.sh` → готовий сайт у `dist/`. Логотип для збірки: `source/assets/logo.svg`.
Піаніно-семпли C4–B4 (`source/src/audio`): FluidR3_GM у збірці gleitz/midi-js-soundfonts (MIT).

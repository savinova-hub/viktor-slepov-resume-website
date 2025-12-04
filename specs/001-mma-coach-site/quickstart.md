# Quickstart

## Prerequisites

- Node.js v20+

## Install dev tools (optional)

```zsh
cd "/Users/alyasavinova/Vitya Website/Viktor_Resume_Website"
npm init -y
npm install --save-dev http-server lighthouse
```

## Run local server

```zsh
npx http-server ./src/site -p 8080 -c-1
```

## Check performance

```zsh
npx lighthouse http://localhost:8080 --only-categories=performance,accessibility --quiet
```

## Structure

- `src/site/index.html` – content and sections
- `src/site/styles/styles.css` – mobile-first responsive styles
- `assets/images/` – gallery images (already provided by user)

## Notes

- Ensure all images have descriptive `alt` text.
- Validate mobile layout at 360–414px widths; no horizontal scroll.
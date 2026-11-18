# Viktor Slepov Professional Website

One-page professional website for Viktor Slepov, MMA & Jiu Jitsu Coach.

## Prerequisites

- Node.js v20+

## Quick Start

### Install dev tools

```zsh
npm install
```

### Run local preview

```zsh
npm run dev
```

Open [http://localhost:8080](http://localhost:8080)

### Check performance

```zsh
npm run lighthouse
```

## Structure

- `src/site/` — HTML, CSS, JS
- `assets/images/` — Gallery images
- `tools/dev/` — Development scripts

## Scripts

- `npm run dev` — Start local server on port 8080
- `npm run lighthouse` — Run Lighthouse performance and accessibility checks

## Deployment (GitHub Pages)

The site is hosted on GitHub Pages with the custom domain `viktorslepov-mma.co.uk` (set in `CNAME`).

**Status: frozen since 2026-11-18** — GitHub Pages is turned off. The domain is still registered; keep auto-renew on at the registrar.

### Pages settings (to restore)

- Source: branch `main`, folder `/` (root), "Deploy from a branch"
- Custom domain: `viktorslepov-mma.co.uk` (also covers `www`)
- Enforce HTTPS: on

### DNS records (at the domain registrar)

| Type  | Host  | Value                       |
|-------|-------|-----------------------------|
| A     | @     | 185.199.108.153             |
| A     | @     | 185.199.109.153             |
| A     | @     | 185.199.110.153             |
| A     | @     | 185.199.111.153             |
| CNAME | www   | savinova-hub.github.io      |

### How to unfreeze

1. Make sure the DNS records above are in place.
2. Repo → Settings → Pages → Source: "Deploy from a branch", branch `main`, folder `/` → Save.
3. Enter `viktorslepov-mma.co.uk` as the custom domain → Save.
4. Once the certificate is issued (can take up to ~1 hour), tick "Enforce HTTPS".

Or with the GitHub CLI:

```zsh
gh api -X POST repos/savinova-hub/viktor-slepov-resume-website/pages -f "source[branch]=main" -f "source[path]=/"
gh api -X PUT repos/savinova-hub/viktor-slepov-resume-website/pages -f cname=viktorslepov-mma.co.uk -F https_enforced=true
```

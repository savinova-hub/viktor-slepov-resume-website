# Research

## Decisions

- Decision: Use pure HTML/CSS with light JS
  - Rationale: Meets static-only constraint; simplest to maintain; fastest to load.
  - Alternatives considered: Static site generator (Eleventy) rejected to avoid added tooling; SPA frameworks rejected as overkill.

- Decision: Node.js tooling with `http-server` and optional `lighthouse` CLI
  - Rationale: Easy local preview and performance checks without bundling.
  - Alternatives considered: Python SimpleHTTPServer acceptable but Node chosen to align with requested stack; Vite rejected to avoid bundling.

- Decision: Mobile-first responsive layout using CSS Grid/Flex
  - Rationale: Satisfies mobile requirements and ensures readability on 360–414px widths.
  - Alternatives considered: Utility frameworks (Tailwind) rejected to keep dependencies minimal.

- Decision: Lazy-load gallery images and optimize assets
  - Rationale: Improves FCP and overall performance; aligns with constitution.
  - Alternatives considered: Progressive image loading libraries rejected to minimize JS.

- Decision: Accessibility baseline (WCAG 2.1 AA)
  - Rationale: Ensures semantic HTML, alt text, focus states, and contrast.
  - Alternatives considered: None; mandatory by constitution.

## Clarifications Resolved

- Language/Version: Node.js LTS v20+ for tooling; site is static.
- Testing: Manual Lighthouse + a11y checks; automated tests optional.
- Hosting: Static hosting (GitHub Pages/Netlify) post-build is N/A (no build).
- Assets: Use existing `assets/images/` provided by user; descriptive filenames recommended.

## Best Practices

- Prefer system fonts to avoid font loading overhead.
- Use `<meta viewport>` and fluid typography for mobile readability.
- Defer non-critical JS; avoid render-blocking CSS (keep CSS small).
- Provide descriptive `alt` for all images; ensure focus outlines are visible.
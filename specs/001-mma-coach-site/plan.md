# Implementation Plan: MMA Coach Static Site

**Branch**: `001-mma-coach-site` | **Date**: 2025-11-30 | **Spec**: `specs/001-mma-coach-site/spec.md`
**Input**: Feature specification from `/specs/001-mma-coach-site/spec.md`

**Note**: This template is filled in by the `/speckit.plan` command. See `.specify/templates/commands/plan.md` for the execution workflow.

## Summary

Build a single-page, static website for an MMA coach with sections for hero/about, background, classes/schedule, pricing, gallery, gym address, and contact (WhatsApp/email). Implement purely with HTML/CSS and light JS, optimized for mobile and performance (lazy-loaded images, responsive layout). Use Node.js LTS locally only for tooling (static server, Lighthouse checks). No backend or databases.

## Technical Context

**Language/Version**: Node.js LTS (v20+) for local tooling; site in HTML/CSS/JS  
**Primary Dependencies**: `http-server` (dev-only), `lighthouse` (CLI optional)  
**Storage**: N/A (static assets only)  
**Testing**: Manual Lighthouse + accessibility checks; optional Playwright smoke tests  
**Target Platform**: Static hosting (GitHub Pages/Netlify), mobile-first browsers  
**Project Type**: Single-page static web  
**Performance Goals**: FCP < 2s on mid-range mobile; images lazy-loaded; minimal CSS/JS  
**Constraints**: Static-only (no backend/db), WCAG 2.1 AA, mobile viewport, touch targets >= 44×44px  
**Scale/Scope**: One page, ~10 sections, assets from `assets/images/`

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

- Static-only delivery: PASS (HTML/CSS/JS; no backend).
- Accessibility (WCAG 2.1 AA): PLAN TO PASS (semantic structure, alt text, focus styles, color contrast; to validate with Lighthouse a11y).
- Performance & Mobile: PLAN TO PASS (lazy loading, viewport meta, responsive grid/flex, avoid render-blocking).
- Simplicity & Maintainability: PASS (no frameworks; minimal dev deps).
- Content Accuracy & Versioning: PASS (spec-driven content; semantic versioning for site changes).

## Project Structure

### Documentation (this feature)

```text
specs/001-mma-coach-site/
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
└── contracts/
```

### Source Code (repository root)

```text
src/site/
├── index.html
├── styles/
│   └── styles.css
└── scripts/
    └── main.js

assets/
└── images/   # user-provided gallery images

tools/
└── dev/
    └── serve.sh  # optional helper to run http-server
```

**Structure Decision**: Single-page static site under `src/site/` with assets in `assets/images/`. Dev tooling scripts in `tools/dev/` for local preview. No backend or test harness required beyond manual checks.

## Complexity Tracking

> **Fill ONLY if Constitution Check has violations that must be justified**

| Violation | Why Needed | Simpler Alternative Rejected Because |
|-----------|------------|-------------------------------------|
| N/A | N/A | N/A |

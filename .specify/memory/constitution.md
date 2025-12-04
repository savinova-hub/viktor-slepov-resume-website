<!--
Sync Impact Report
- Version change: 1.0.0 → 1.1.0
- Modified principles: III. Performance & Optimization (explicit mobile target)
- Added sections: None
- Removed sections: Template placeholder section fully removed
- Templates requiring updates:
	✅ .specify/templates/plan-template.md (Constitution Check aligns with static-site gates)
	✅ .specify/templates/spec-template.md (User scenarios remain applicable)
	✅ .specify/templates/tasks-template.md (Task grouping remains applicable; tests optional per spec)
- Follow-up TODOs:
	- TODO(RATIFICATION_DATE): Original adoption date unknown; set when known
-->

# Viktor Resume Website Constitution

## Core Principles

### I. Static-Only Delivery
Content MUST be served as a static website. No server-side
execution, databases, or dynamic backends are permitted. All
functionality must be achievable via HTML, CSS, and client-side
JavaScript only.

Rationale: Eliminates operational complexity, improves reliability,
and simplifies hosting and maintenance for a personal resume site.

### II. Accessibility (WCAG AA)
Pages MUST meet WCAG 2.1 AA criteria for key aspects: semantic HTML
structure, sufficient color contrast, keyboard navigation, meaningful
alt text for images, and focus management.

Rationale: Ensures the site is usable by everyone and aligns with
professional presentation standards.

### III. Performance, Mobile & Optimization
The site MUST load quickly on typical mobile networks: optimize
assets (images compressed, fonts subset or system fonts), defer or
async non-critical scripts, and avoid render-blocking resources.
Target: First Contentful Paint under 2s on a mid-range device.
Mobile experience MUST be responsive: include a viewport meta tag,
use responsive layouts (flex/grid), fluid typography, touch-friendly
targets (min 44×44px), and breakpoints that ensure readability on
small screens.

Rationale: Fast pages improve user experience and search visibility.

### IV. Simplicity & Maintainability
Design and code MUST remain simple: minimal dependencies, clear
structure, and small bundle sizes. Avoid frameworks unless they add
clear value for a static site. Prefer plain HTML/CSS and light
JavaScript.

Rationale: Reduces maintenance overhead and makes future updates easy.

### V. Content Accuracy & Versioning
Content MUST be accurate and up to date. Use semantic versioning for
content and structure changes: MAJOR for breaking navigation/layout
restructures, MINOR for new sections or notable additions, PATCH for
typo or small copy edits.

Rationale: Provides traceability and predictable change management.

## Additional Constraints

- Hosting: Deploy via static hosting (e.g., GitHub Pages, Netlify).
- Privacy: No invasive trackers; analytics MUST be privacy-preserving
	(optional) and documented.
- SEO: Provide `title`, `meta` descriptions, Open Graph tags, and a
	sitemap if multiple pages.
- Assets: Images MUST have descriptive filenames; use responsive
	images (`srcset`) where beneficial.
- Mobile: Include `<meta name="viewport" content="width=device-width, initial-scale=1">`.
	Validate layouts on common mobile widths (360–414px) and ensure
	no horizontal scrolling.

## Development Workflow

- Authoring: Edit content in `index.html`, `assets/`, and `styles/`.
- Reviews: Changes MUST be reviewed for accessibility, performance,
	and accuracy before publish.
- Testing: Manual checks with browser dev tools and Lighthouse are
	REQUIRED before release; automated tests are OPTIONAL given static
	scope.
- Deployment: CI or manual publish to static host; ensure cache
	invalidation for updated assets.

## Governance

- Compliance: All pull requests MUST verify adherence to Core
	Principles and Constraints.
- Amendments: Propose changes via PR with rationale and potential
	migration notes; update version per policy.
- Versioning Policy: Use semantic versioning for the constitution
	itself; MAJOR for removals/redefinitions, MINOR for added guidance,
	PATCH for clarifications.
- Review Cadence: Perform a quarterly compliance review or upon any
	significant content update.

**Version**: 1.1.0 | **Ratified**: TODO(RATIFICATION_DATE): original adoption date unknown | **Last Amended**: 2025-11-30

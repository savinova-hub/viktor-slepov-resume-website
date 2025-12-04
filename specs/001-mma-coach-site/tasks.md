# Tasks: MMA Coach Static Site

Feature: MMA Coach Static Site (specs/001-mma-coach-site/spec.md)

## Phase 1: Setup

- [X] T001 Initialize Node.js tooling in repo root (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/package.json`)
- [X] T002 [P] Add dev dependencies http-server and lighthouse (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/package.json`)
- [X] T003 Create source tree per plan (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/`)
- [X] T004 [P] Add optional dev script `tools/dev/serve.sh` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/tools/dev/serve.sh`)
- [X] T005 Add quickstart commands to README (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/README.md`)

## Phase 2: Foundational

- [X] T006 Create base HTML scaffold with semantic sections (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T007 [P] Add mobile-first CSS and viewport meta (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/styles/styles.css`)
- [X] T008 [P] Implement minimal JS for nav toggle and smooth scroll (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/scripts/main.js`)
- [X] T009 Wire lazy loading for images and responsive grid (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T010 Verify constitution gates (WCAG AA baseline, FCP target) (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/specs/001-mma-coach-site/quickstart.md`)

## Phase 3: User Story 1 (P1) — Discover and Contact

- [X] T011 [US1] Create Hero section with name, profession, location (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T012 [P] [US1] Add WhatsApp CTA linking to `https://wa.me/447391060491` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T013 [US1] Add email link `mailto:slepovviktor1995@icloud.com` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T014 [P] [US1] Ensure mobile tap targets ≥ 44×44px (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/styles/styles.css`)
- [X] T015 [US1] Navbar anchors to sections (About, Experience, Achievements, Gallery, Classes, Pricing, Contact) (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)

## Phase 4: User Story 2 (P2) — Evaluate Coaching Background

- [X] T016 [US2] Implement About section with natural English content (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T017 [P] [US2] Implement Experience section without prohibited details (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T018 [US2] Implement Personal Achievements section (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T019 [P] [US2] Implement Students' Achievements section (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T020 [US2] Ensure anchors reach each section smoothly (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/scripts/main.js`)

## Phase 5: User Story 3 (P3) — View Classes & Schedule

- [X] T021 [US3] Implement Classes & Schedule section (Private: Mon/Wed/Fri 08:00–11:00; Group: Tue/Thu 09:00–10:30, Sat 17:00) (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T022 [P] [US3] Add gym address exactly `51 Westgate, Bradford BD1 2RD` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T023 [US3] Add link to `https://www.jbfmma.co.uk/` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T024 [P] [US3] Ensure mobile readability ≤414px, no horizontal scroll (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/styles/styles.css`)

## Phase 6: User Story 4 (P3) — See Pricing

- [X] T025 [US4] Implement Pricing section: Group — £65/month; Individual — £40 per 1 hour 20 minutes session (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T026 [P] [US4] Ensure pricing typography is legible on mobile (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/styles/styles.css`)

## Phase 7: Gallery & Media

- [X] T027 Implement Gallery grid using images from `assets/images/` (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T028 [P] Add descriptive `alt` text for all gallery images (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T029 [P] Ensure lazy loading (`loading="lazy"`) and responsive behavior (`srcset` optional) (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)

## Final Phase: Polish & Cross-Cutting

- [X] T030 Validate Lighthouse performance and accessibility targets (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/specs/001-mma-coach-site/quickstart.md`)
- [X] T031 Ensure focus states visible and color contrast AA (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/styles/styles.css`)
- [X] T032 Add meta title and description; optional Open Graph (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)
- [X] T033 Version bump in site content if needed (`/Users/alyasavinova/Vitya Website/Viktor_Resume_Website/src/site/index.html`)

## Dependencies & Order

- US1 → US2 → US3 → US4 (P1, then P2, then P3s)
- Foundational must precede all user story phases.

## Parallel Execution Examples

- [P] T012 (WhatsApp CTA) can run parallel to T011 (Hero copy).
- [P] T017 (Experience) parallel to T018 (Personal Achievements).
- [P] T022 (Address) parallel to T023 (Gym link).
- [P] T026 (Pricing styles) parallel to T025 (Pricing content).

## Implementation Strategy

- MVP focuses on User Story 1 (Hero + Contact) for immediate value.
- Incrementally deliver US2, then US3 and US4.

## Validation Summary

- Total tasks: 33
- Per story: US1 (5), US2 (5), US3 (4), US4 (2), Gallery (3), Setup+Foundational (10), Polish (4)
- Parallel opportunities: 7 marked [P]
- Independent tests: Each story includes clear criteria from spec
- Format validation: All tasks follow `- [ ] T### [P?] [US?] Description with file path`
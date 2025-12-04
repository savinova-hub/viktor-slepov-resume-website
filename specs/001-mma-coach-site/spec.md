# Feature Specification: Viktor Slepov One-Page Professional Website

**Feature Branch**: `[001-mma-coach-site]`  
**Created**: 2025-11-30  
**Status**: Draft  
**Input**: User description: "One-page professional site for an MMA & Jiu Jitsu coach with sections: About, Experience, Personal Achievements, Students’ Achievements, Gallery, Classes & Schedule, Contact. Natural English, mobile-friendly, WhatsApp contact. Include gym address and website."

## User Scenarios & Testing *(mandatory)*

<!--
  IMPORTANT: User stories should be PRIORITIZED as user journeys ordered by importance.
  Each user story/journey must be INDEPENDENTLY TESTABLE - meaning if you implement just ONE of them,
  you should still have a viable MVP (Minimum Viable Product) that delivers value.
  
  Assign priorities (P1, P2, P3, etc.) to each story, where P1 is the most critical.
  Think of each story as a standalone slice of functionality that can be:
  - Developed independently
  - Tested independently
  - Deployed independently
  - Demonstrated to users independently
-->

### User Story 1 - Discover and Contact (Priority: P1)

A visitor quickly understands who Viktor is and starts a WhatsApp chat or sends an email.

**Why this priority**: Primary conversion goal; contacting Viktor is the key outcome.

**Independent Test**: Verify the hero section shows name, profession, location, WhatsApp button (opens wa.me) and email link, all usable on mobile.

**Acceptance Scenarios**:

1. **Given** the hero loads, **When** the user clicks "Message on WhatsApp", **Then** WhatsApp opens via `https://wa.me/447391060491`.
2. **Given** the hero loads, **When** the user taps the email link, **Then** the default mail client opens with `slepovviktor1995@icloud.com`.

---

### User Story 2 - Evaluate Coaching Background (Priority: P2)

A visitor reads About, Experience, Personal Achievements, and Students’ Achievements to assess credibility.

**Why this priority**: Builds trust via Viktor’s credentials and coaching results.

**Independent Test**: Sections render with natural English content and are reachable via navbar anchors.

**Acceptance Scenarios**:

1. **Given** the navbar, **When** the user clicks "Experience", **Then** the page scrolls to the experience section.
2. **Given** the achievements sections, **When** read, **Then** content is clear, professional, and free of prohibited details (no entrepreneurship, no army, no FuelUp).

---

### User Story 3 - View Classes & Schedule (Priority: P3)

A visitor finds JBF MMA Academy (Bradford) location and sees private/group class times.

**Why this priority**: Enables planning training attendance.

**Independent Test**: Schedule section lists times; address is present and scannable on mobile.

**Acceptance Scenarios**:

1. **Given** the Classes section, **When** viewed on a phone (≤414px width), **Then** times are readable without horizontal scrolling.
2. **Given** the address field, **When** gym address is populated, **Then** it matches official details from `https://www.jbfmma.co.uk/`.
3. **Given** the Classes section, **When** viewed, **Then** it displays: "JBF MMA Academy – Bradford, 51 Westgate, Bradford BD1 2RD" and a link to `https://www.jbfmma.co.uk/`.

---

[Add more user stories as needed, each with an assigned priority]

### User Story 4 - See Pricing (Priority: P3)

A visitor clearly sees monthly pricing for group and individual training.

**Why this priority**: Supports decision-making and reduces back-and-forth on costs.

**Independent Test**: Pricing section lists amounts and is readable on mobile.

**Acceptance Scenarios**:

1. **Given** the Pricing section, **When** viewed, **Then** it displays: Group — £65 per month; Individual — £40 per 1 hour 20 minutes session.
2. **Given** the Pricing section, **When** viewed on mobile (≤414px), **Then** prices are legible with no horizontal scroll.

### Edge Cases

<!--
  ACTION REQUIRED: The content in this section represents placeholders.
  Fill them out with the right edge cases.
-->

- What happens when the visitor is on a slow 3G network? The page remains usable; hero content loads quickly; images are optimized.
- How does the site handle missing gallery images? Placeholders remain with descriptive alt text; layout does not break.

## Requirements *(mandatory)*

<!--
  ACTION REQUIRED: The content in this section represents placeholders.
  Fill them out with the right functional requirements.
-->

### Functional Requirements

- **FR-001**: Site MUST be a single HTML page with anchor-based navigation.
- **FR-002**: Site MUST present sections: Hero, About, Experience, Personal Achievements, Students’ Achievements, Gallery, Classes & Schedule, Contact.
- **FR-003**: WhatsApp link MUST open `https://wa.me/447391060491` from the hero and contact sections.
- **FR-004**: Contact details MUST include WhatsApp-only number and email.
- **FR-005**: Classes & Schedule MUST list private training (Mon/Wed/Fri 08:00–11:00) and group classes (Tue/Thu 09:00–10:30, Sat 17:00).
- **FR-006**: JBF MMA Academy Bradford official address MUST be displayed as: `51 Westgate, Bradford BD1 2RD`.
- **FR-007**: Gallery MUST use accessible alt text and responsive grid.
- **FR-008**: Navigation MUST be mobile-friendly with a toggle, and anchors MUST scroll to sections.
- **FR-009**: Classes & Schedule MUST include a visible link to the gym’s website: `https://www.jbfmma.co.uk/`.
- **FR-010**: Pricing section MUST present: Group — £65/month; Individual — £40 per 1 hour 20 minutes session.

### Key Entities *(include if feature involves data)*

- **Section**: Named page area (About, Experience, Achievements...). Attributes: `id`, `title`, `content`.
- **Contact**: WhatsApp number, WhatsApp link, email, location.
- **Schedule Item**: Type (Private/Group), days, time range, location address.

## Success Criteria *(mandatory)*

<!--
  ACTION REQUIRED: Define measurable success criteria.
  These must be technology-agnostic and measurable.
-->

### Measurable Outcomes

- **SC-001**: Mobile First Contentful Paint under 2 seconds on a mid-range device (no blocking assets).
- **SC-002**: All navbar links scroll to their sections without layout shift.
- **SC-003**: WhatsApp and email links function correctly on mobile and desktop.
- **SC-004**: Address displayed matches JBF MMA Academy official Bradford location.
- **SC-004a**: Address displayed is exactly: `51 Westgate, Bradford BD1 2RD`.
- **SC-005**: Text reads as natural, fluent English with no prohibited content.
- **SC-006**: Pricing displays exact values: Group — £65/month; Individual — £40 per 1 hour 20 minutes session, readable on mobile.

## Acceptance Checklist

- [X] Hero shows name, profession, location; WhatsApp and email links work (mobile + desktop)
- [X] Navbar anchors scroll to About, Experience, Personal Achievements, Students' Achievements, Gallery, Classes & Schedule, Pricing, Contact
- [X] Text throughout reads as natural, fluent English;
- [X] Experience section matches resume content and dates (2015–2023) without prohibited details
- [X] Personal achievements listed exactly as specified
- [X] Students' achievements listed clearly and professionally
- [X] Gallery renders images from `assets/images/` with descriptive alt text and lazy loading
- [X] JBF MMA Academy address displayed exactly: `51 Westgate, Bradford BD1 2RD` and links to `https://www.jbfmma.co.uk/`
- [X] Schedule lists Private (Mon/Wed/Fri 08:00–11:00) and Group (Tue/Thu 09:00–10:30, Sat 17:00); note about expanding groups present
- [X] Pricing displays: Group — £65/month; Individual — £40 per 1 hour 20 minutes session; readable on mobile
- [X] Mobile: No horizontal scrolling at ≤414px; nav toggle works; focus states visible
- [X] Performance: First Contentful Paint under 2s on mid-range device; images optimized

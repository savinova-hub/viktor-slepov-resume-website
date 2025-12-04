# Data Model

## Entities

- CoachProfile
  - Fields: name, bioSummary, experienceHighlights[], achievements[], studentsHighlights[], contactEmail, contactWhatsApp, websiteLink

- ClassOffering
  - Fields: title, description, scheduleText, locationAddress, gymWebsite

- Pricing
  - Fields: groupMonthlyGBP (65), individualSessionGBP (40), individualSessionDuration ("1h20m")

- GalleryImage
  - Fields: filename, altText, caption? (optional)

## Relationships

- CoachProfile has many ClassOffering
- CoachProfile has one Pricing
- CoachProfile has many GalleryImage

## Validation Rules

- All external links must be absolute URLs (https).
- Address must include street and postcode: "51 Westgate, Bradford BD1 2RD".
- Images must include `altText` describing the content.
- Pricing must reflect: group £65/month; individual £40 per 1h20m session.

## State Transitions

- Static content updates only via site version bumps (semantic versioning per constitution).
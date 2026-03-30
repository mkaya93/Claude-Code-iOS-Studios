---
paths:
  - "design/prd/**"
---

# PRD (Product Requirements Document) Rules

- All PRDs use Markdown
- Each feature has a dedicated PRD in `design/prd/`
- PRDs must include these 8 required sections:
  1. **Overview** — one-paragraph summary
  2. **User Goal** — intended feeling and goal for the user
  3. **Detailed Rules** — unambiguous feature specification
  4. **Acceptance Criteria** — testable with XCTest
  5. **Edge Cases** — unusual situations handled
  6. **Dependencies** — other features/systems listed
  7. **Tuning Knobs** — configurable values with ranges and units
  8. **HIG Compliance** — relevant Apple HIG guidelines followed

- All configurable values must link to `assets/data/` config files
- Acceptance criteria must be testable with XCTest or XCUITest
- Include iOS version availability for any platform-specific features
- Reference Apple HIG: https://developer.apple.com/design/human-interface-guidelines/

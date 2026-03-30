# /design-review — Review a PRD or Feature Design

Perform a structured review of a Product Requirements Document.

## Process

Read the PRD from `design/prd/[feature].md` and review each section:

### 1. Completeness Check
Verify all 8 required sections are present and non-empty:
- [ ] Overview
- [ ] User Goal
- [ ] Detailed Rules
- [ ] Formulas (if applicable)
- [ ] Edge Cases
- [ ] HIG Compliance
- [ ] Tuning Knobs
- [ ] Acceptance Criteria

### 2. Clarity Check
- Are the Detailed Rules unambiguous? (Could two engineers implement this differently?)
- Are edge cases exhaustive? (empty state, network failure, permissions denied, accessibility)
- Are acceptance criteria in GIVEN/WHEN/THEN format?

### 3. HIG Alignment
- Does the design follow established iOS patterns?
  Reference: https://developer.apple.com/design/human-interface-guidelines/
- Is the navigation pattern appropriate?
- Are gestures standard iOS gestures?
- Is the information hierarchy clear?

### 4. Technical Feasibility
- Are the required Apple frameworks available at the minimum iOS version?
  Reference: https://developer.apple.com/documentation/
- Are there privacy permission requirements? Are they documented?
- Are there App Store Review concerns? (IAP, content, permissions)

### 5. Accessibility
- Can all features work with VoiceOver?
- Does text scale with Dynamic Type?
- Are there color-blind-safe alternatives?

## Output

```markdown
## Design Review: [Feature Name]

### Status: APPROVED / NEEDS REVISION / BLOCKED

### Issues
**Must Fix**: [critical issues]
**Should Fix**: [important but not blocking]
**Suggestions**: [optional improvements]

### Approved Sections
[list sections that look good]
```

# /design-system — Design a Feature (Full PRD)

Create a complete Product Requirements Document for an iOS feature.

## Goal
Produce a full PRD in `design/prd/[feature-name].md` following the 8-section format.

## Process

Work through these sections ONE AT A TIME, writing each to the file after approval:

### Section 1: Overview
One paragraph: what the feature is and why it exists.

### Section 2: User Goal
What is the user trying to accomplish? What does success look like from their perspective?

### Section 3: Detailed Rules
Unambiguous specification of the feature mechanics:
- Input events and responses
- State transitions
- Data inputs and outputs
- Constraints and limits

### Section 4: Formulas (if applicable)
Any math or algorithms:
```
Score = BasePoints × Multiplier
Where:
  BasePoints ∈ [10, 100]
  Multiplier ∈ [1.0, 3.0]
```

### Section 5: Edge Cases
What happens in unusual or boundary situations?
- Empty states
- Network failure
- Permissions denied
- Accessibility modes active

### Section 6: HIG Compliance
Which Apple Human Interface Guidelines apply?
- Navigation pattern used
- Gesture vocabulary
- Accessibility requirements
- Reference: https://developer.apple.com/design/human-interface-guidelines/

### Section 7: Tuning Knobs
Configurable values (stored in JSON, not hardcoded):
- Name, type, default value, valid range

### Section 8: Acceptance Criteria
Testable, XCTest-verifiable conditions:
```
GIVEN [setup]
WHEN [action]
THEN [expected outcome]
```

## File Template
```markdown
# Feature: [Name]
**Status**: Draft | Approved | Implemented
**Owner**: [Designer name]
**Last Updated**: [Date]

## Overview
## User Goal
## Detailed Rules
## Formulas
## Edge Cases
## HIG Compliance
## Tuning Knobs
## Acceptance Criteria
```

## After PRD is Approved
Suggest: `/architecture-decision` if the feature requires a new architectural pattern.

# /milestone-review — Milestone Review

Conduct a formal milestone review to assess readiness to proceed.

## Process

### 1. Read Milestone Definition
Check `production/milestones/` for the milestone spec.
If no milestone file exists, ask the user what the milestone goals were.

### 2. Assess Completion

For each milestone goal:
- [ ] Goal 1: [status]
- [ ] Goal 2: [status]

Mark each: Complete / Partial / Not Started / Blocked

### 3. Quality Assessment

**Features:**
- Which features are complete per their acceptance criteria?
- Which are partial — what's missing?

**Quality:**
- Test coverage percentage
- Open bug counts by severity
- Performance metrics vs. targets

**iOS Platform:**
- Tested on oldest supported device?
- Accessibility audit status?
- Privacy compliance checked?

### 4. Risk Assessment
What risks remain heading into the next phase?
- Technical risks (unsolved problems)
- Schedule risks (items likely to slip)
- Platform risks (App Review concerns)

### 5. Decision

| Decision | Criteria |
|----------|----------|
| **PASS** | All P0 goals complete, risks acceptable |
| **CONDITIONAL PASS** | Minor gaps, clear path to resolve |
| **HOLD** | Significant gaps, replanning needed |

### 6. Output

Write to `production/milestones/[milestone]-review.md`:
```markdown
# Milestone Review: [Name]
**Date**: [Date]
**Decision**: PASS / CONDITIONAL PASS / HOLD

## Goal Completion
[table of goals vs. completion]

## Quality Snapshot
[metrics]

## Risks
[list]

## Next Milestone
[what comes next]
```

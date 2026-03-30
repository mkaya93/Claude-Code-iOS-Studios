# /retrospective — Sprint or Release Retrospective

Facilitate a structured retrospective for a sprint or release.

## Process

### 1. Gather Data
Read:
- `production/sprints/sprint-[N].md` for planned vs. actual
- `production/session-logs/` for session history
- Any bug reports or incidents from the period

### 2. Four-Part Retrospective

#### What went well?
- Features shipped as planned
- Technical decisions that paid off
- Process improvements that worked
- Positive user feedback received

#### What didn't go well?
- Items that slipped
- Bugs that reached TestFlight/App Store
- Technical decisions that caused rework
- Process friction points

#### What did we learn?
- Technical insights (new API patterns, performance discoveries)
- Product insights (user feedback, App Store review feedback)
- Process insights (what slowed us down)

#### What will we do differently?
- Concrete changes for next sprint/release
- Process adjustments
- Technical debt to address

### 3. Action Items
Each action item must have:
- Owner
- Due date
- Measurable outcome

### 4. Output

Write to `production/retrospectives/retro-[date].md`:
```markdown
# Retrospective: [Sprint N / v1.2.3 Release]
**Date**: [Date]
**Facilitator**: [Name]
**Period**: [Start] → [End]

## What Went Well
- [item]

## What Didn't Go Well
- [item]

## What We Learned
- [item]

## Action Items
| Action | Owner | Due |
|--------|-------|-----|
| [action] | [owner] | [date] |
```

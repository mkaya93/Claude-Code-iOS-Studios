# /sprint-plan — Plan a Development Sprint

Create a sprint plan for the next development cycle.

## Process

### 1. Gather Context
Read:
- `production/session-state/active.md` for current state
- Latest sprint file in `production/sprints/`
- `design/prd/systems-index.md` for feature backlog

### 2. Review Last Sprint
If a previous sprint exists, summarize:
- What was completed vs. planned
- Carry-over items
- Blockers encountered

### 3. Define Sprint Goals
Ask user:
- How many days is this sprint?
- What is the primary focus? (feature dev, bug fixing, polish, release prep)
- Any hard deadlines? (TestFlight date, App Store submission)

### 4. Select Sprint Items
Prioritize from backlog:
- **P0**: Must ship this sprint (blocking release)
- **P1**: Should ship this sprint (high value)
- **P2**: Nice to have (fill remaining capacity)

For each item estimate: S (< 1 day), M (1-2 days), L (3-5 days)

### 5. Write Sprint File

Create `production/sprints/sprint-[N].md`:
```markdown
# Sprint [N]
**Dates**: [Start] → [End]
**Goal**: [One sentence describing the sprint's focus]

## P0 Items
- [ ] [Item] — [S/M/L] — [Owner]

## P1 Items
- [ ] [Item] — [S/M/L] — [Owner]

## P2 Items
- [ ] [Item] — [S/M/L] — [Owner]

## Definition of Done
- [ ] Unit tests pass
- [ ] No High+ bugs introduced
- [ ] Accessibility audit on new screens
- [ ] PRD acceptance criteria verified

## iOS-Specific Gates
- [ ] Tested on oldest supported device
- [ ] TestFlight build created (if release sprint)
```

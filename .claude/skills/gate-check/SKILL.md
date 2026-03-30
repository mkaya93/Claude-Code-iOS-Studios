# /gate-check — Quality Gate Check

Run a quality gate assessment before moving to the next development phase.

## Gate Levels

Run the appropriate gate for the current transition:

### Pre-Production → Production Gate
- [ ] App concept document exists (`design/prd/app-concept.md`)
- [ ] Technical preferences configured (`.claude/docs/technical-preferences.md`)
- [ ] At least 1 core feature PRD written and approved
- [ ] Architecture decisions documented for key choices
- [ ] Xcode project created and builds cleanly

### Production → Alpha Gate
- [ ] Core features implemented per PRDs
- [ ] Unit test coverage ≥ 60% on business logic
- [ ] No Critical or High bugs open
- [ ] App launches without crash on oldest supported device
- [ ] Basic accessibility: VoiceOver doesn't crash

### Alpha → Beta Gate
- [ ] All MVP features implemented
- [ ] Unit test coverage ≥ 80%
- [ ] UI tests for critical flows
- [ ] Zero memory leaks on primary user journeys
- [ ] Launch time < 400ms cold start
- [ ] Privacy Manifest complete
- [ ] TestFlight build successfully submitted

### Beta → Release Gate
- [ ] Crash-free rate > 99.5% in TestFlight
- [ ] All App Store assets ready
- [ ] Release notes written and localized
- [ ] No High+ bugs open
- [ ] Performance budgets met
- [ ] Security review complete
- [ ] Accessibility audit complete

## Output Format
```markdown
## Gate Check: [Gate Name]
**Date**: [Date]
**Status**: PASS / FAIL / CONDITIONAL

### ✓ Passing
[list]

### ✗ Failing (blockers)
[list]

### Recommendation
[Pass to next stage / Fix these first]
```

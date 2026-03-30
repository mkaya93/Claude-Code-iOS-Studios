---
paths:
  - "prototypes/**"
---

# Prototype Code Rules (iOS)

Prototypes are THROWAWAY. Standards are INTENTIONALLY RELAXED for speed.

- README.md REQUIRED: hypothesis, method, findings, keep/discard/iterate decision
- Isolated from `src/` — NEVER import prototype code into production
- SwiftUI preferred for fastest iteration
- No tests required
- No localization required
- Force unwraps allowed — speed over safety
- Hardcoded values allowed
- No architecture required

## README Template

```markdown
# [Prototype Name]

## Hypothesis
[What are we testing?]

## Method
[What did we build?]

## Findings
[What happened?]

## Decision
- [ ] KEEP — extract to src/ (link to PRD)
- [ ] DISCARD — hypothesis failed
- [ ] ITERATE — promising but needs work
```

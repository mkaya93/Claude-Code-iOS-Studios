# /architecture-decision — Record an Architecture Decision

Create an Architecture Decision Record (ADR) for a significant technical choice.

## Goal
Write a structured ADR in `docs/architecture/[name].md` that captures what was decided and why.

## When to Use
- Choosing between architectural patterns (MVVM vs TCA vs MV)
- Adopting a new dependency
- Choosing between two implementation approaches
- Making a decision that is hard to reverse

## Process

### 1. Name the Decision
Short imperative title: "Use @Observable over ObservableObject for ViewModels"

### 2. Gather Context
Ask:
- What is the problem we're solving?
- What options did we consider?
- What constraints apply? (iOS version, team skill, timeline)

### 3. Write the ADR

```markdown
# ADR-[NNN]: [Title]

**Date**: [YYYY-MM-DD]
**Status**: Proposed | Accepted | Deprecated | Superseded by ADR-NNN
**Deciders**: [Who decided]

## Context
[What is the situation and why is a decision needed?]

## Decision
[What we decided to do, stated clearly]

## Options Considered

### Option A: [Name]
- Pro:
- Con:

### Option B: [Name]
- Pro:
- Con:

## Rationale
[Why we chose this option over the alternatives]

## Consequences
- Positive:
- Negative:
- Risks:

## References
- [Apple documentation URL]
- [Swift Evolution proposal if applicable]
```

### 4. Number the ADR
Check `docs/architecture/` for existing ADRs and increment the number.

## Reference
- Swift Evolution: https://www.swift.org/swift-evolution/
- Swift: https://www.swift.org/documentation/

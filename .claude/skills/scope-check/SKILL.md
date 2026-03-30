# /scope-check — MVP Scope Check

Evaluate a feature request against MVP scope and App Store viability.

## Process

### 1. Understand the Request
Ask:
- What feature is being proposed?
- What user problem does it solve?
- Is it in the original app concept? (Read `design/prd/app-concept.md`)

### 2. Evaluate Scope Criteria

**Is this MVP?**
- Does the app fail without it? (Core = yes, Nice-to-have = no)
- Can it launch without this feature? (If yes → post-MVP)
- Is it on the original feature list? (If not → scope creep risk)

**App Store Impact:**
- Does it require new privacy permissions? (Slows approval, prompts user)
- Does it require a new entitlement? (Must request from Apple)
- Does it create App Store Review risk? (Content, IAP, tracking)

**Technical Complexity:**
- New Apple frameworks needed?
- New backend required?
- Impact on other features?

### 3. Scope Decision

| Decision | Criteria |
|----------|----------|
| **In MVP** | Core to value proposition, low risk |
| **Post-MVP** | Valuable but not essential |
| **Future Version** | Significant scope, plan for v2 |
| **Out of Scope** | Contradicts vision, too high risk |

### 4. Output

```markdown
## Scope Check: [Feature Name]

**Decision**: In MVP | Post-MVP | Future | Out of Scope

**Rationale**:
[2-3 sentences explaining the decision]

**If Post-MVP — What Changes?**
[What the MVP version would look like without it]

**App Store Considerations**:
[Any privacy, entitlement, or review concerns]
```

## Reference
- App Store Review Guidelines: https://developer.apple.com/app-store/review/guidelines/

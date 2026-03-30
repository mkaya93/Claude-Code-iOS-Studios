# /balance-check — Game/App Balance Verification

Verify that game mechanics or app systems are balanced and within design targets.

## Process

### 1. Identify the System to Check
Ask: which system needs balance verification?
- Scoring formula
- Progression curve
- Economy (earning vs. spending rates)
- Difficulty curve
- IAP value proposition

### 2. Read the Design Spec
Read the relevant PRD from `design/prd/`:
- Extract the formulas defined
- Note the tuning knobs and their configured values
- Read the acceptance criteria for balance

### 3. Verify Against Data Files
Check `assets/data/` for the JSON config files:
- Validate values are within the ranges specified in PRD
- Check for values that have drifted from the design intent

### 4. Spot-Check Key Scenarios

For each formula, test edge cases:
- Minimum input values → expected output
- Maximum input values → expected output
- Typical (median) input → expected output
- Cross the thresholds defined in the PRD

### 5. Flag Issues

| Issue Type | Example |
|-----------|---------|
| Value out of range | DifficultyMultiplier = 5.0 (spec: 1.0–3.0) |
| Formula mismatch | Code uses different formula than PRD |
| Missing tuning knob | Value hardcoded that should be configurable |
| Balance gap | Early progression too slow vs. design target |

### 6. Output

```markdown
## Balance Check: [System Name]
**Date**: [Date]
**PRD**: design/prd/[filename].md

### ✓ In Balance
[list passing checks]

### ✗ Issues Found
[list issues with file:line references]

### Recommendation
[What to adjust]
```

## Reference
- https://developer.apple.com/documentation/

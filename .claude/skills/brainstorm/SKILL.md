# /brainstorm — Feature Brainstorming Session

Run a structured brainstorming session for a new iOS feature or app concept.

## Goal
Generate and evaluate feature ideas before committing to a full PRD.

## Process

### 1. Frame the Problem
Ask the user:
- What user problem are we solving?
- Who is the target user?
- What do they do today (without this feature)?

### 2. Generate Options
Present 3-5 distinct approaches to solving the problem:
- Include a simple/minimal approach
- Include a delightful/premium approach
- Include a technically creative approach
- Note any Apple framework that could power each

For each option include:
- Core mechanic/interaction
- Estimated implementation complexity (S/M/L)
- Apple frameworks required
- Key risk or unknown

### 3. Evaluate Against iOS Platform
For each idea, assess:
- **HIG alignment**: Does it follow established iOS patterns?
  Reference: https://developer.apple.com/design/human-interface-guidelines/
- **Privacy implications**: What permissions/data does it need?
- **Accessibility**: Can it work with VoiceOver + Dynamic Type?
- **App Store viability**: Any review guideline concerns?

### 4. Recommend
Recommend the best 1-2 options with rationale.

### 5. Next Step
If user picks an idea, suggest:
- `/prototype` for quick validation
- `/design-system` for full PRD

## Output Format
Present results in a scannable table, then recommendation paragraph.

# /prototype — Create a SwiftUI Prototype

Scaffold a throwaway SwiftUI prototype to validate a concept or interaction.

## Goal
Build a focused prototype in `prototypes/[name]/` that answers ONE specific question.

## Process

### 1. Define the Question
Ask the user:
- What one question does this prototype answer?
- What interaction or concept needs validation?
- How will we know if the prototype succeeds?

### 2. Create Prototype Structure

Create the following files:

**`prototypes/[name]/README.md`**
```markdown
# Prototype: [Name]

## Question
[Exactly one question this prototype answers]

## Hypothesis
[What we expect to learn]

## Scope
[What's in / out of scope]

## How to Run
Open in Xcode, select the preview target.
```

**`prototypes/[name]/Prototype.swift`**
A self-contained SwiftUI file with `#Preview`. Allowed shortcuts:
- Hardcoded mock data
- Force unwraps where they simplify
- No unit tests
- `@State` on views directly (skip ViewModel)
- Single file implementation

### 3. Write the Prototype
Write focused, minimal SwiftUI code that demonstrates ONLY the concept being tested. Use `#Preview` with multiple representative states.

### 4. Verdict Template

After prototype is complete, remind user to create `VERDICT.md`:
```markdown
# Verdict: [Name]

## Question Asked
[Original question]

## Result
[ ] Ship — concept validated, proceed to /design-system
[ ] Iterate — concept has merit, adjust and re-prototype
[ ] Kill — concept doesn't work, document why

## Learnings
[What we learned, even if we're killing it]

## Next Step
[/design-system | /brainstorm | abandon]
```

## Reference
- SwiftUI Previews: https://developer.apple.com/documentation/swiftui/previewprovider
- SwiftUI: https://developer.apple.com/documentation/swiftui

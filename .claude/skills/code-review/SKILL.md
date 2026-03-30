# /code-review — Review Swift Code

Perform a structured code review of Swift/iOS code.

## What to Review

When invoked with a file path or PR, review for:

### 1. Swift Correctness
- No force unwraps (`!`) without justification comment
- No `try!` in production code
- No implicitly unwrapped optionals (`var x: Type!`) without strong reason

### 2. Concurrency Safety
- All `@MainActor` annotations correct
- No data races: shared mutable state protected by `actor` or `@MainActor`
- `Sendable` conformance at async boundaries
- No `DispatchQueue` in new code — use `async/await`
- No `Task.detached` without strong reason

### 3. iOS Platform Best Practices
- All user-facing strings use `String(localized:)` — no hardcoded strings
- All interactive elements have `accessibilityLabel`
- Dynamic Type: all text uses system fonts or `@ScaledMetric`
- Reduce Motion: animations check `@Environment(\.accessibilityReduceMotion)`
- Privacy: no PII logged, no secrets in code

### 4. Architecture
- Views are passive — no business logic in `body`
- ViewModel doesn't import SwiftUI
- Dependencies injected, not hardcoded
- Protocols define boundaries between layers

### 5. Testing
- Business logic has unit test coverage
- ViewModels are testable (dependency-injected)

## Output Format

```markdown
## Code Review: [File/Feature]

### Critical (must fix before merge)
- [ ] [issue]

### High (fix soon)
- [ ] [issue]

### Suggestion (optional improvement)
- [ ] [idea]

### Approved ✓
- [what looks good]
```

## Reference
- Swift API Design Guidelines: https://www.swift.org/documentation/api-design-guidelines/
- Swift Concurrency: https://developer.apple.com/documentation/swift/concurrency

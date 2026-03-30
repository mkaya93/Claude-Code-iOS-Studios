---
paths:
  - "src/ui/**"
---

# UI Code Rules (iOS SwiftUI/UIKit)

- UI must NEVER own or directly modify app state — display only, use commands/actions to request changes
- All user-facing strings MUST use `String(localized:)` or `NSLocalizedString` — NO hardcoded UI text
- Support Dynamic Type for ALL text — use `.font(.body)` or `preferredFont(forTextStyle:)`, never fixed sizes
- ALL animations MUST respect `@Environment(\.accessibilityReduceMotion)` or `UIAccessibility.isReduceMotionEnabled`
- Every interactive element MUST have an `.accessibilityLabel`
- UI must NEVER block the main thread — all data fetching via `.task` modifier or `async/await`
- Support both light and dark mode — use semantic colors from Asset Catalog
- Minimum touch target: 44×44pt for all tappable elements
- Test at all Dynamic Type sizes (xSmall through AX5)

## SwiftUI Examples

**Correct**:
```swift
struct ScoreView: View {
    var score: Int  // Passed in, not owned

    var body: some View {
        Text(String(localized: "Score: \(score)"))  // Localized
            .font(.headline)  // Dynamic Type
            .accessibilityLabel(String(localized: "Current score: \(score)"))
    }
}
```

**Incorrect**:
```swift
struct ScoreView: View {
    @State var score: Int = 0  // VIOLATION: owns state it shouldn't

    var body: some View {
        Text("Score: \(score)")  // VIOLATION: non-localized
            .font(.system(size: 17))  // VIOLATION: fixed size, no Dynamic Type
    }
}
```

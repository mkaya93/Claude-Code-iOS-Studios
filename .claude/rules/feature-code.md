---
paths:
  - "src/features/**"
---

# Feature Code Rules (iOS)

- ALL configurable values MUST come from external JSON config files, NEVER hardcoded in Swift
- Use `async/await` for ALL asynchronous operations — no completion handlers in new code
- Mark all UI updates with `@MainActor` — never update UI from a non-main actor
- NO direct references to UI code from business logic — use protocols/delegates/callbacks
- Every feature module must implement a clear protocol interface
- State machines must have explicit states defined as enums
- Write unit tests for all business logic — separate logic from views
- Document which PRD section each feature implements in code comments
- No force unwrap (`!`) in feature code — use guard/if-let
- No static singletons for app state — use dependency injection

## Examples

**Correct** (async/await, data-driven):
```swift
func fetchPlayerScore() async throws -> Int {
    let config = try GameConfig.load()  // From JSON config
    let score = try await scoreService.getScore(for: config.playerId)
    return score
}
```

**Incorrect**:
```swift
func fetchPlayerScore(completion: @escaping (Int) -> Void) {  // VIOLATION: completion handler
    let playerId = "hardcoded_id_123"  // VIOLATION: hardcoded value
    completion(42)
}
```

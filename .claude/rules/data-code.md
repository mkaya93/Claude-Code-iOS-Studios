---
paths:
  - "src/data/**"
---

# Data Layer Code Rules (iOS)

- Use SwiftData (iOS 17+) or Core Data for persistent models — not raw UserDefaults for complex data
- ALL model types must be `Codable` and `Sendable`
- Sensitive data (tokens, credentials) MUST use Keychain — NEVER UserDefaults or files
- Repository pattern: data layer must not know about UI
- All database operations on background actor — never on `@MainActor`

## References
- SwiftData: https://developer.apple.com/documentation/swiftdata
- Core Data: https://developer.apple.com/documentation/coredata
- Keychain: https://developer.apple.com/documentation/security/keychain_services

## Correct (SwiftData)

```swift
@Model
final class PlayerProfile {
    var id: UUID
    var displayName: String
    var score: Int
}
```

## Incorrect

```swift
UserDefaults.standard.set(authToken, forKey: "auth_token")  // VIOLATION: sensitive in UserDefaults
```

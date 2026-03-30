---
paths:
  - "tests/**"
---

# Test Standards (iOS — XCTest / Swift Testing)

- Test naming (XCTest): `test_[system]_[scenario]_[expectedResult]()`
- Test naming (Swift Testing): `@Test func [scenario]_[expectedResult]()`
- Structure: Arrange / Act / Assert with blank lines between sections
- No shared mutable state between tests — each test fully isolated
- No network calls in unit tests — use mock URLProtocol or dependency injection
- No file system writes in unit tests — use in-memory stores
- Performance tests use `measure {}` or `XCTCPUMetric` — document baseline

## XCTest Example

```swift
final class PlayerTests: XCTestCase {
    func test_player_takeDamage_reducesHealthByAmount() {
        // Arrange
        let player = Player(health: 100)

        // Act
        player.takeDamage(25)

        // Assert
        XCTAssertEqual(player.health, 75)
    }
}
```

## Swift Testing Example (iOS 17+)

```swift
@Test func playerTakesDamage_reducesHealth() {
    let player = Player(health: 100)
    player.takeDamage(25)
    #expect(player.health == 75)
}
```

## References
- XCTest: https://developer.apple.com/documentation/xctest
- Swift Testing: https://developer.apple.com/documentation/testing

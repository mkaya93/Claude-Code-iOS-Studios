# Coding Standards

## Swift Code Standards

- All public APIs must include doc comments (`///`) with parameters, returns, and throws
- Every system must have a corresponding ADR in `docs/architecture/`
- All configurable values must be data-driven (external JSON/plist), never hardcoded in Swift
- All public methods must be unit-testable — prefer dependency injection over singletons
- Commits must reference the relevant design document or task ID
- **Verification-driven development**: Write tests first when adding features.
  For UI changes, verify with screenshots. Compare expected output to actual output
  before marking work complete. Every implementation must have a way to prove it works.

## Swift-Specific Rules

- Use `async/await` for all asynchronous operations (no completion handler callbacks in new code)
- Mark UI update code with `@MainActor`
- Use `Sendable` protocols for types crossing concurrency domains
- Prefer value types (`struct`) over reference types (`class`) for data models
- Use Swift's structured concurrency (`async let`, `TaskGroup`) for parallel work
- No force unwrap (`!`) outside test code

## iOS Platform Rules

- Follow Apple Human Interface Guidelines: https://developer.apple.com/design/human-interface-guidelines/
- Support Dynamic Type for all text — use `UIFont.preferredFont(forTextStyle:)`
- Support VoiceOver for all interactive elements
- Respect `UIAccessibility.isReduceMotionEnabled` for animations
- All user-facing strings go through localization — no raw string literals in UI

## Design Document Standards

- All design docs use Markdown
- Each feature has a dedicated PRD in `design/prd/`
- Documents must include these 8 required sections:
  1. **Overview** — one-paragraph summary
  2. **User Goal** — intended feeling and experience (for games) OR User Goal (for apps)
  3. **Detailed Rules** — unambiguous feature specification
  4. **Acceptance Criteria** — testable success conditions with XCTest examples
  5. **Edge Cases** — unusual situations handled
  6. **Dependencies** — other systems listed
  7. **Tuning Knobs** — configurable values identified
  8. **Apple HIG Compliance** — relevant HIG guidelines followed

## API References (Always Consult)

- Apple Developer Documentation: https://developer.apple.com/documentation/
- Swift Standard Library: https://developer.apple.com/documentation/swift
- Swift Language: https://www.swift.org
- SwiftUI: https://developer.apple.com/documentation/swiftui
- UIKit: https://developer.apple.com/documentation/uikit
- Metal: https://developer.apple.com/documentation/metal
- GameKit: https://developer.apple.com/documentation/gamekit
- SpriteKit: https://developer.apple.com/documentation/spritekit
- RealityKit: https://developer.apple.com/documentation/realitykit
- AVFoundation: https://developer.apple.com/documentation/avfoundation
- Core ML: https://developer.apple.com/documentation/coreml

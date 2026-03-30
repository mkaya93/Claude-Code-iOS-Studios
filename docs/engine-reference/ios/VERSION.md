# iOS SDK — Version Reference

| Field | Value |
|-------|-------|
| **Platform** | iOS / iPadOS |
| **Current SDK** | iOS 18 |
| **Swift Version** | Swift 6.0 |
| **Xcode Version** | Xcode 16 |
| **Project Pinned** | [TO BE CONFIGURED — run /setup-platform] |
| **Last Docs Verified** | [TO BE CONFIGURED] |
| **LLM Knowledge Cutoff** | August 2025 |

## Knowledge Gap Warning

Always verify Apple API suggestions against the official documentation.
Apple updates APIs frequently and deprecates old patterns.

**ALWAYS check before using any API:**
- https://developer.apple.com/documentation/
- https://www.swift.org

## Post-Cutoff Considerations

| Area | Risk Level | Notes |
|------|------------|-------|
| SwiftUI | MEDIUM | New APIs added each WWDC; verify availability |
| Swift Concurrency | LOW | Stable since Swift 5.5, Swift 6 adds strict mode |
| Swift 6 | MEDIUM | Strict concurrency checking is new in Swift 6 |
| RealityKit / visionOS | HIGH | Rapidly evolving for spatial computing |
| Core ML | MEDIUM | Model formats and APIs evolve |

## Verified Sources

- Apple Developer Documentation: https://developer.apple.com/documentation/
- Swift Language: https://www.swift.org
- SwiftUI: https://developer.apple.com/documentation/swiftui
- Human Interface Guidelines: https://developer.apple.com/design/human-interface-guidelines/
- App Store Review Guidelines: https://developer.apple.com/app-store/review/guidelines/
- WWDC Videos: https://developer.apple.com/wwdc/
- Swift Evolution: https://www.swift.org/swift-evolution/
- Swift Package Index: https://swiftpackageindex.com

## Deployment Target Reference

| iOS Version | Swift | Xcode | Notes |
|-------------|-------|-------|-------|
| iOS 18 | 6.0 | 16.x | Latest — strict concurrency, new SwiftUI APIs |
| iOS 17 | 5.9+ | 15.x | Swift Data, Swift Observation, TipKit |
| iOS 16 | 5.7+ | 14.x | Swift Charts, Lock Screen widgets |
| iOS 15 | 5.5+ | 13.x | async/await, SwiftUI improvements |
| iOS 14 | 5.3+ | 12.x | Minimum for most new projects |

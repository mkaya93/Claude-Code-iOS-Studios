# Technical Preferences

## Platform & Language

- **Platform**: [TO BE CONFIGURED — run /setup-platform]
- **Language**: [TO BE CONFIGURED]
- **UI Framework**: [TO BE CONFIGURED]
- **Minimum iOS Version**: [TO BE CONFIGURED]
- **Swift Version**: [TO BE CONFIGURED]

## Naming Conventions

- **Types/Classes**: PascalCase (e.g., `PlayerViewController`)
- **Variables/Properties**: camelCase (e.g., `playerScore`)
- **Functions/Methods**: camelCase verb-first (e.g., `fetchPlayerData()`)
- **Constants**: camelCase with `let` (e.g., `let maxHealth = 100`)
- **Files**: PascalCase matching type (e.g., `PlayerViewController.swift`)
- **Assets**: lowercase_underscore (e.g., `player_idle.png`)
- **Protocols**: PascalCase with verb/adjective suffix (e.g., `PlayerDelegate`, `Configurable`)

## Architecture

- **App Architecture**: [TO BE CONFIGURED — MVVM / MVI / TCA / VIPER]
- **Dependency Injection**: [TO BE CONFIGURED]
- **State Management**: [TO BE CONFIGURED]

## Performance Budgets

- **Target Framerate**: [TO BE CONFIGURED]
- **Frame Budget**: [TO BE CONFIGURED]
- **Memory Ceiling**: [TO BE CONFIGURED]
- **App Launch Time**: [TO BE CONFIGURED — Apple recommends <400ms to first frame]
- **App Binary Size**: [TO BE CONFIGURED]

## Testing

- **Framework**: XCTest + Swift Testing (iOS 17+)
- **UI Testing**: XCUITest
- **Minimum Coverage**: [TO BE CONFIGURED]
- **Required Tests**: Core game logic, networking layer, data models

## Accessibility

- VoiceOver support: Required for all interactive elements
- Dynamic Type: Required for all text
- Minimum contrast ratio: 4.5:1 (WCAG AA)
- Reduce Motion: Respect `UIAccessibility.isReduceMotionEnabled`

## Documentation References

- Swift Language: https://www.swift.org
- Apple Developer Docs: https://developer.apple.com/documentation/
- Human Interface Guidelines: https://developer.apple.com/design/human-interface-guidelines/
- App Store Review Guidelines: https://developer.apple.com/app-store/review/guidelines/

## Forbidden Patterns

- Force unwrap (`!`) outside of test code — use guard/if-let
- `DispatchQueue.main.async` in view models — use `@MainActor`
- Hardcoded strings in UI — all user-facing text through `NSLocalizedString`
- Retain cycles — no strong `self` captures in closures stored by `self`

## Allowed Libraries / Packages

- [None configured yet — add via Swift Package Manager decisions]

## Architecture Decisions Log

- [No ADRs yet — use /architecture-decision to create one]

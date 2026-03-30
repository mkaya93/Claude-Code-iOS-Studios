# /setup-platform — Configure iOS Platform Settings

Configure the technical platform settings for this iOS project.

## What This Skill Does
Updates `.claude/docs/technical-preferences.md` with:
- Minimum iOS deployment target
- Swift version
- Primary UI framework
- Architecture pattern
- Performance budgets

## Questions to Ask

1. **Deployment Target**: Minimum iOS version?
   - iOS 17 — enables `@Observable`, `NavigationStack`, `SwiftData`
   - iOS 16 — stable, `NavigationStack`, no `@Observable`
   - iOS 15 — AsyncImage, `.task` modifier, `async/await` in views

2. **Swift Version**: Swift 5.10 (compatible) or Swift 6 (strict concurrency)?

3. **Architecture**:
   - MVVM (default — ViewModel + SwiftUI View)
   - MV (Model-View — simpler, no ViewModel layer)
   - TCA (The Composable Architecture — if using that library)

4. **Performance Budgets**:
   - Target framerate: 60fps / 120fps (ProMotion)
   - Cold launch target: < 400ms (recommended)
   - Memory ceiling: [user specifies]

## After Gathering Answers

Update `.claude/docs/technical-preferences.md` with all configured values.

Then suggest running `/design-system` to start designing the first feature.

## Reference Documentation
- Swift: https://www.swift.org/documentation/
- SwiftUI: https://developer.apple.com/documentation/swiftui
- iOS Release Notes: https://developer.apple.com/tutorials/data/documentation/ios-ipados-release-notes.json

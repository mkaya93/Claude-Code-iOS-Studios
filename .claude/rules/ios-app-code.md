---
paths:
  - "src/app/**"
---

# App Lifecycle Code Rules (iOS)

- App entry point must use `@main` with `App` protocol (SwiftUI) or `@UIApplicationMain` (UIKit)
- Handle ALL scene phases: `.active`, `.inactive`, `.background`
- Pause game/audio and save state when entering `.background`
- Never perform heavy computation in `applicationDidFinishLaunching` — defer to background
- Privacy Manifest (`.xcprivacy`) must document all required reason API usage
- Request permissions only when needed, with clear purpose strings in Info.plist

## App Lifecycle Template (SwiftUI)

```swift
@main
struct MyApp: App {
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { _, newPhase in
            switch newPhase {
            case .active: resumeApp()
            case .inactive: pauseApp()
            case .background: saveStateAndBackground()
            @unknown default: break
            }
        }
    }
}
```

## References
- App lifecycle: https://developer.apple.com/documentation/swiftui/managing-your-app-s-life-cycle
- Privacy manifest: https://developer.apple.com/documentation/bundleresources/privacy_manifest_files

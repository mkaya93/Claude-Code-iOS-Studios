# /team-ios — Coordinate iOS Development Team

Coordinate the iOS development team for a feature implementation sprint.

## What This Skill Does
Orchestrate parallel work across iOS sub-specialists for a complex feature.

## Process

### 1. Understand the Feature
Read the approved PRD from `design/prd/[feature].md`.
Identify which specialists need to contribute:
- **SwiftUI Specialist** — UI views and animations
- **UIKit Specialist** — complex custom views, UICollectionView
- **Feature Programmer** — ViewModel and business logic
- **Network Programmer** — API calls
- **iOS Core Programmer** — app lifecycle, background tasks
- **UI Programmer** — screen composition and navigation

### 2. Create Work Breakdown
For each specialist, define their task:
```markdown
| Specialist | Task | Dependencies | Estimated |
|-----------|------|--------------|-----------|
| Feature Programmer | ViewModel + State machine | None | M |
| SwiftUI Specialist | Screen views | ViewModel interface | M |
| Network Programmer | API client for endpoint | None | S |
```

### 3. Define Integration Points
- What interfaces must be agreed on before parallel work begins?
- Which tasks block others?
- What shared data models are needed?

### 4. Sequence the Work
```
Phase 1 (parallel): ViewModel interface + API client
Phase 2 (parallel): SwiftUI views + unit tests
Phase 3: Integration + UI tests
Phase 4: Code review + accessibility audit
```

### 5. Tracking
Update `production/session-state/active.md` with current phase and status.

## Reference
- SwiftUI: https://developer.apple.com/documentation/swiftui
- Swift Concurrency: https://developer.apple.com/documentation/swift/concurrency

# /team-ui — Coordinate UI/UX Team

Coordinate UI design and implementation across the UX, Art, and UI programming teams.

## Process

### 1. Understand Scope
Ask: which screens or UI systems need work?
- New screen design
- Existing screen redesign
- Design system / component library
- Navigation architecture changes

### 2. Coordinate Design → Implementation Flow

```
UX Designer → User flow + screen spec
     ↓
Art Director → Visual design, colors, typography
     ↓
UI Programmer → SwiftUI implementation
     ↓
SwiftUI Specialist → Complex animations/effects
     ↓ (if UIKit needed)
UIKit Specialist → Custom UIKit components
     ↓
Accessibility Specialist → Audit + fixes
```

### 3. Design Handoff Checklist
Before implementation starts:
- [ ] Screen spec written (Screen Designer)
- [ ] All states defined: loading, empty, error, populated
- [ ] Dark Mode designs provided
- [ ] Accessibility annotations added (VoiceOver labels)
- [ ] Dynamic Type behavior specified
- [ ] HIG compliance verified

### 4. Implementation Checklist
After implementation:
- [ ] All text uses system fonts or ScaledMetric
- [ ] Dark Mode tested
- [ ] Smallest and largest Dynamic Type tested
- [ ] VoiceOver walkthrough done
- [ ] Reduce Motion version implemented
- [ ] All touch targets ≥ 44×44pt

### 5. Design QA
- Run on iPhone SE (smallest supported)
- Run on iPad (if universal)
- Screenshot comparison: design vs. implementation

## Reference
- HIG: https://developer.apple.com/design/human-interface-guidelines/
- SwiftUI: https://developer.apple.com/documentation/swiftui
- Accessibility: https://developer.apple.com/documentation/accessibility

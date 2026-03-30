# /team-feature — Ship a Complete Feature

Coordinate all work needed to ship one complete iOS feature end-to-end.

## Process

### Phase 1: Design
1. App Designer writes PRD → `/design-system`
2. UX Designer creates user flow
3. Design review → `/design-review`

### Phase 2: Architecture
1. Lead Programmer reviews technical approach
2. If new pattern: `/architecture-decision`
3. Define interfaces and data models

### Phase 3: Implementation (parallel tracks)
- **Track A: Core Logic**
  - Feature Programmer: ViewModel + business logic
  - Write unit tests alongside

- **Track B: UI**
  - UI Programmer / SwiftUI Specialist: views
  - Accessibility labels and Dynamic Type

- **Track C: Data & Network**
  - Network Programmer: API client (if needed)
  - iOS Core Programmer: persistence (if needed)

### Phase 4: Integration
- Wire tracks together
- Integration tests
- Accessibility audit (`XCUIAccessibilityAudit`)

### Phase 5: Review & Polish
- Code review: `/code-review`
- QA Tester: test cases per acceptance criteria
- Performance: check main thread, memory

### Phase 6: Ship
- Update systems index: `design/prd/systems-index.md`
- TestFlight build
- Feature flag if risky

## Checklist
- [ ] PRD has all 8 sections and is approved
- [ ] Architecture decision recorded (if new pattern)
- [ ] Unit tests pass (coverage ≥ 80% for business logic)
- [ ] Accessibility audit passes
- [ ] Tested on oldest supported device
- [ ] No hardcoded strings — all localized
- [ ] Code review approved

## Reference
- https://developer.apple.com/documentation/
- https://www.swift.org/documentation/

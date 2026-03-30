# /team-polish — App Polish Sprint

Coordinate a polish sprint to improve quality, feel, and App Store ratings.

## Polish Areas

### 1. Visual Polish
- Art Director: review all screens for visual consistency
- Technical Artist: optimize any shader-based effects
- Ensure Dark Mode looks great, not just correct
- App icon and launch screen review

### 2. Interaction Polish
- UX Designer: audit all transitions and animations
- SwiftUI Specialist: spring animations where appropriate
- Respect Reduce Motion: all animations have alternatives
- Haptic feedback where appropriate (UIFeedbackGenerator)

### 3. Performance Polish
- Performance Analyst: run full Instruments profile
- Fix any dropped frames on scroll views
- Ensure cold launch < 400ms
- Image loading: use `AsyncImage` or pre-fetch

### 4. Accessibility Polish
- Accessibility Specialist: full VoiceOver walkthrough
- Dynamic Type: test at AX5 (largest)
- XCUIAccessibilityAudit: fix all failures
- Focus order logical for keyboard/Switch Control

### 5. Copy Polish
- Writer: review all user-facing copy
- Error messages: helpful, not cryptic
- Empty states: engaging, not just "No items"
- Button labels: action-oriented

### 6. Edge Case Polish
- QA Tester: test all empty states
- Test offline / airplane mode
- Test permission denied flows
- Test low storage / low memory scenarios

## Polish Sprint Output
```markdown
# Polish Sprint Results

## Visual
- [x] [Improvement made]

## Interaction
- [x] [Improvement made]

## Performance
- Before launch time: [Xms] → After: [Xms]

## Accessibility
- [N] XCUIAccessibilityAudit issues fixed

## Copy
- [N] strings improved
```

## Reference
- HIG: https://developer.apple.com/design/human-interface-guidelines/
- Accessibility: https://developer.apple.com/documentation/accessibility

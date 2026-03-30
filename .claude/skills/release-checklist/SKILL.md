# /release-checklist — iOS Release Preparation Checklist

Generate a complete App Store release checklist.

## Process

Read:
- `design/prd/app-concept.md` for app name and features
- Latest sprint files for what's shipping
- `production/releases/` for previous release history

## Output: App Store Release Checklist

```markdown
# Release Checklist: v[X.Y.Z]
**Target Date**: [Date]
**Release Manager**: [Name]

## Code Quality
- [ ] All unit tests passing (`swift test`)
- [ ] No Xcode warnings in Release scheme
- [ ] SwiftLint passing with zero violations
- [ ] Crash-free rate > 99.5% in TestFlight
- [ ] Memory leaks: zero on primary flows (Instruments: Leaks)
- [ ] Launch time < 400ms cold (Instruments: App Launch)

## Privacy & Compliance
- [ ] `PrivacyInfo.xcprivacy` updated with all required reason APIs
- [ ] Privacy policy URL valid and updated
- [ ] ATT prompt text reviewed (if using IDFA)
- [ ] GDPR compliance verified (if EU audience)
- [ ] Age rating and content descriptors accurate

## App Store Assets
- [ ] App Store screenshots updated (all required device sizes)
- [ ] App Preview video updated (if applicable)
- [ ] Release notes written and localized
- [ ] App description reviewed and accurate
- [ ] Keywords optimized

## Build
- [ ] Version number bumped (CFBundleShortVersionString)
- [ ] Build number incremented (CFBundleVersion)
- [ ] Archive created with Distribution certificate
- [ ] Notarization/signing verified in Xcode Organizer

## TestFlight
- [ ] Internal testing ≥ 48 hours
- [ ] External beta group tested (if applicable)
- [ ] All critical and high bugs resolved
- [ ] TestFlight notes written

## Post-Submission
- [ ] App Review submitted
- [ ] Phased rollout configured (5% → 10% → 50% → 100%)
- [ ] Crash reporting monitored (MetricKit / Crashlytics)
- [ ] Community manager ready for launch communication
```

## Reference
- App Store Review Guidelines: https://developer.apple.com/app-store/review/guidelines/
- App Store Connect: https://developer.apple.com/app-store-connect/
- Privacy Manifest: https://developer.apple.com/documentation/bundleresources/privacy-manifest-files

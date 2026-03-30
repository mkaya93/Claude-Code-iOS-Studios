# /testflight-report — TestFlight Beta Report

Generate a TestFlight beta testing report for a build.

## Process

### 1. Gather Data
Ask the user for:
- Build version and number
- TestFlight testing duration
- Number of testers
- Feedback received (crashes, tester comments)

Or read from:
- `production/session-logs/` for session history
- Any tester feedback files

### 2. Report Sections

```markdown
# TestFlight Beta Report: v[X.Y.Z] ([NNN])
**Build Date**: [Date]
**Testing Period**: [Start] → [End] ([N] days)
**Tester Groups**: Internal ([N]) / External ([N])

## Stability Metrics
- Crash-free rate: [X]% (target: > 99%)
- Total sessions: [N]
- Total crashes: [N]
- Unique crash signatures: [N]

## Top Crashes
1. [Crash description] — [N] occurrences — [Fixed in / Investigating]
2. [Crash description] — [N] occurrences

## Tester Feedback Summary
### Positive
- [theme]

### Issues Reported
- [issue] — Severity: [H/M/L] — [Status]

### Feature Requests
- [request] (post-MVP / considering / declined)

## Resolved Since Last Build
- [ ] [Fixed issue]

## Recommendation
[ ] Ready for App Store submission
[ ] Needs one more beta cycle for: [reason]
[ ] Blocking issues must be fixed: [list]
```

### 3. Pass/Fail Criteria
**Ready for App Store:**
- Crash-free rate > 99.5%
- No Critical bugs open
- All High bugs resolved or have accepted workaround
- Tested for minimum 48 hours

## Reference
- TestFlight: https://developer.apple.com/testflight/
- App Store Connect: https://developer.apple.com/app-store-connect/

# /bug-report — File a Structured Bug Report

Create a well-structured bug report for an iOS issue.

## Process

Ask the user:
1. What is the observed behavior?
2. What is the expected behavior?
3. What are the steps to reproduce?
4. Device and iOS version?
5. Build version? (CFBundleShortVersionString + CFBundleVersion)
6. Is it reproducible every time? Intermittent?
7. Any crash log or screenshot?

## Bug Report Template

Write to `docs/bugs/[date]-[short-title].md` or to the team's issue tracker:

```markdown
# Bug: [Short Description]

**ID**: BUG-[NNN]
**Date Filed**: [Date]
**Filed By**: [Name]
**Severity**: Critical | High | Medium | Low
**Status**: New | Investigating | Fixed | Verified | Closed

## Environment
- **Device**: [iPhone model]
- **iOS Version**: [e.g., iOS 18.2]
- **App Version**: [e.g., v1.2.3 (456)]
- **Build Config**: Debug | TestFlight | App Store

## Description
[Clear description of what's wrong]

## Steps to Reproduce
1. [Step 1]
2. [Step 2]
3. [Step 3 — where the bug occurs]

## Expected Behavior
[What should happen]

## Actual Behavior
[What actually happens]

## Frequency
[ ] Always reproducible
[ ] Intermittent (___% of the time)
[ ] Only in specific conditions: [describe]

## Attachments
- [ ] Screenshot
- [ ] Screen recording
- [ ] Crash log (from Xcode Organizer or device)
- [ ] Console log

## Root Cause (filled by developer)
[Once investigated]

## Fix (filled by developer)
[PR/commit reference]
```

## Severity Definitions
- **Critical**: App crash, data loss, security issue
- **High**: Core feature broken, no workaround
- **Medium**: Feature degraded, workaround exists
- **Low**: Cosmetic, edge case, minor annoyance

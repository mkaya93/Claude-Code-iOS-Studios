# /team-release — Coordinate App Store Release

Coordinate all teams for an App Store release.

## Release Coordination Timeline

### T-2 Weeks: Feature Freeze
- [ ] All planned features merged to main
- [ ] `/gate-check` Beta → Release gate
- [ ] Release Manager: create release branch
- [ ] QA Lead: full regression test plan

### T-10 Days: Content Freeze
- [ ] Community Manager: draft release notes
- [ ] Art Director: update screenshots if needed
- [ ] Localization Lead: all locales updated
- [ ] Release Manager: bump version number

### T-7 Days: TestFlight External Beta
- [ ] DevOps: submit TestFlight build
- [ ] QA Lead: all hands testing
- [ ] Community Manager: notify beta testers
- [ ] Monitor crash-free rate

### T-3 Days: Final Build
- [ ] All critical TestFlight bugs fixed
- [ ] Privacy Manifest final review
- [ ] Release Manager: submit to App Store Review
- [ ] Community Manager: prepare social posts

### T-0: Launch Day
- [ ] Confirm App Store approval
- [ ] Enable phased rollout (5%)
- [ ] Community Manager: post launch announcement
- [ ] Performance Analyst: monitor dashboards
- [ ] QA Lead: monitor crash reports

### T+3 Days: Rollout Expansion
- [ ] Metrics review: crash rate, reviews, retention
- [ ] Increase rollout to 50% if healthy
- [ ] Community Manager: respond to reviews

## Roles in Release
| Role | Responsibility |
|------|---------------|
| Release Manager | Build, signing, submission |
| QA Lead | Quality gates, regression |
| DevOps Engineer | CI/CD, build pipeline |
| Community Manager | Communication, release notes |
| Performance Analyst | Launch day monitoring |

## Reference
- App Store Connect: https://developer.apple.com/app-store-connect/
- TestFlight: https://developer.apple.com/testflight/

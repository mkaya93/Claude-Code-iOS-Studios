# /launch-checklist — App Store Launch Day Checklist

Generate a launch day coordination plan for an App Store release.

## Output: Launch Day Checklist

```markdown
# Launch Day: [App Name] v[X.Y.Z]
**Launch Date**: [Date]

## T-24h (Day Before)
- [ ] Build approved by App Review
- [ ] Phased rollout set to 5%
- [ ] Social media posts scheduled
- [ ] Community manager briefed
- [ ] Support email/channel ready
- [ ] Monitoring dashboards set up (MetricKit, crash reporting)

## T-0 (Launch Hour)
- [ ] Confirm app is live on App Store
- [ ] Test download from App Store (fresh install)
- [ ] Verify IAP working (if applicable)
- [ ] Post launch announcement
- [ ] Monitor crash-free rate (target > 99%)
- [ ] Monitor App Store reviews (first impressions)

## T+1h (First Hour)
- [ ] Review first crash reports
- [ ] Check MetricKit launch time metrics
- [ ] Respond to first App Store reviews
- [ ] Update community on launch status

## T+24h (Day After)
- [ ] Review Day 1 retention data
- [ ] Triage bug reports from reviews
- [ ] Consider increasing rollout percentage
- [ ] Post-mortem notes started

## T+72h (3 Days After)
- [ ] Rollout to 50% if metrics healthy
- [ ] Hotfix build ready if needed
- [ ] First-week retention analysis

## Rollback Plan
If crash-free rate drops below 98%:
1. Pause phased rollout in App Store Connect
2. Assess whether hotfix is feasible
3. If critical: contact App Review for expedited review
4. Communicate issue to community honestly

## Reference
- App Store Connect: https://developer.apple.com/app-store-connect/
- App Review expedited: https://developer.apple.com/app-store/review/
```

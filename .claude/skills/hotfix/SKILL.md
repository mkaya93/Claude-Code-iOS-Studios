# /hotfix — Hotfix Process

Guide a production hotfix for a critical iOS bug.

## When to Use
Only for Critical bugs in App Store builds:
- Crash affecting significant portion of users
- Data loss or corruption
- Security vulnerability

## Process

### 1. Assess Severity
- What % of users are affected? (check MetricKit / crash reports)
- Can users work around it?
- Is data at risk?

If the crash rate is < 1% with a workaround: consider regular release cycle instead.

### 2. Hotfix Branch Workflow
```bash
# Branch from the release tag, not main
git checkout v[X.Y.Z]
git checkout -b hotfix/[description]

# Make the minimal fix
# Run tests
swift test

# Increment only the patch version
# v1.2.3 → v1.2.4
```

### 3. Minimal Fix Principle
- Fix ONLY the reported issue
- Do not bundle other changes
- Do not refactor surrounding code
- Do not add features

### 4. Testing the Hotfix
- [ ] Reproduce original bug — confirm it's fixed
- [ ] Run full test suite
- [ ] Test on oldest supported device
- [ ] TestFlight build for internal testing only
- [ ] 24h internal TestFlight before App Store submission

### 5. Expedited App Review
If the crash is truly critical (crashes on launch for many users):
- Request expedited review in App Store Connect Resolution Center
- Provide clear explanation of the issue and user impact
- Reference: https://developer.apple.com/app-store/review/

### 6. Communication
After hotfix ships:
- Notify community (Community Manager)
- Update release notes: "v1.2.4 — Fixes [description]"
- Document the incident in `docs/postmortems/`

## Reference
- App Store Connect: https://developer.apple.com/app-store-connect/
- MetricKit: https://developer.apple.com/documentation/metrickit

# /perf-profile — Performance Profiling Session

Guide a structured iOS performance profiling session.

## Process

### 1. Identify What to Profile
Ask user:
- What is the performance symptom? (slow launch, UI jank, memory growth, battery drain)
- Which user flow is affected?
- Which device is showing the issue?

### 2. Choose the Right Instrument

| Symptom | Instrument |
|---------|-----------|
| Slow launch | App Launch |
| UI jank / dropped frames | Time Profiler + Core Animation |
| Memory growth | Allocations |
| Memory leak | Leaks |
| Battery drain | Energy Log |
| GPU issues | GPU Frame Debugger |
| Network | Network |

### 3. Profiling Setup
- Always profile **Release** scheme (Debug has extra overhead)
- Profile on a **physical device** — simulator CPU/GPU differs significantly
- Disable Energy Saver / Low Power Mode during profiling
- Run the **exact user flow** you're measuring

### 4. Analysis Checklist

**Time Profiler:**
- [ ] Any main-thread work > 16ms? (causes dropped frame)
- [ ] Heavy synchronous disk I/O on main thread?
- [ ] JSON decoding on main thread?

**Allocations:**
- [ ] Memory growing monotonically? (leak indicator)
- [ ] Large allocations from images? (consider downsampling)
- [ ] Persistent objects not being released?

**Leaks:**
- [ ] Any orange/red leaks detected?
- [ ] Common pattern: `[weak self]` missing in async closures?

### 5. Document Findings

Write to `docs/performance/[date]-[feature]-profile.md`:
```markdown
## Performance Profile: [Feature]
**Date**: [Date]
**Device**: [Model, iOS version]
**Symptom**: [Description]

## Findings
[What Instruments showed]

## Root Cause
[What caused the issue]

## Fix
[What was changed]

## Before/After Metrics
| Metric | Before | After |
|--------|--------|-------|
```

## Reference
- Instruments: https://developer.apple.com/documentation/xcode/improving-your-app-s-performance
- MetricKit: https://developer.apple.com/documentation/metrickit

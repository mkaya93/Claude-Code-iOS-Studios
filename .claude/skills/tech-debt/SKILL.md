# /tech-debt — Technical Debt Audit

Audit and prioritize technical debt in the iOS codebase.

## Process

### 1. Scan for Debt Markers
Search the codebase for:
- `TODO:` and `FIXME:` comments (without owner tags)
- `// HACK:` or `// WORKAROUND:` comments
- Deprecated API usage
- Force unwraps (`!`) in production code
- `DispatchQueue` usage (should be `async/await`)
- `ObservableObject` (can migrate to `@Observable` on iOS 17+)
- Completion handlers (can migrate to `async/await`)

### 2. Categorize Debt

| Category | Priority | Examples |
|----------|----------|---------|
| Security debt | P0 | Secrets in code, HTTP endpoints |
| Crash risk | P0 | Force unwraps without nil check |
| Correctness | P1 | Race conditions, data loss risk |
| Maintainability | P2 | TODO/FIXME items, duplicated code |
| Modernization | P3 | Deprecated APIs, old patterns |

### 3. Estimate Impact

For each debt item:
- Risk if not addressed
- Effort to fix (S/M/L)
- Best time to address (next sprint / quarterly / opportunistic)

### 4. Output

Write to `docs/tech-debt/[date]-audit.md`:
```markdown
# Tech Debt Audit
**Date**: [Date]
**Codebase**: [scope scanned]

## P0 — Fix Immediately
- [ ] [item] — [file:line] — Risk: [impact]

## P1 — Fix This Quarter
- [ ] [item] — [file:line] — Effort: S/M/L

## P2 — Fix Opportunistically
- [ ] [item] — [file:line]

## P3 — Modernization Queue
- [ ] [item] — [file:line]

## Summary
Total debt items: [N]
P0 items: [N]
Estimated total effort: [days]
```

## Reference
- Swift Concurrency migration: https://developer.apple.com/documentation/swift/concurrency
- Observable migration: https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro

# /changelog — Generate Changelog

Generate a user-friendly changelog from git history or sprint notes.

## Process

### 1. Gather Changes
Read:
- `git log` since the last version tag
- `production/sprints/` for the sprint(s) included in this release
- Bug reports that were fixed

### 2. Categorize Changes

| Category | Icon | Description |
|----------|------|-------------|
| New Features | ✦ | User-visible new capabilities |
| Improvements | ↑ | Enhancements to existing features |
| Bug Fixes | ✕ | Resolved issues |
| Performance | ⚡ | Speed or efficiency improvements |
| Accessibility | ♿ | Accessibility improvements |

### 3. Write for Users (Not Engineers)

Bad: "Fix race condition in URLSession delegate callback"
Good: "Fixed an issue where downloads could fail unexpectedly"

Bad: "Migrate from ObservableObject to @Observable"
Good: (internal refactor — don't mention to users)

Internal refactors, dependency updates, and tooling changes are NOT included in user-facing changelogs.

### 4. Output Files

**App Store release notes** (`production/releases/v[X.Y.Z]-notes.md`):
```markdown
What's New in v[X.Y.Z]
• [Most impactful user-facing change]
• [Second change]
• [Bug fixes and performance improvements]
```

**Developer CHANGELOG.md** (full technical history):
```markdown
## [X.Y.Z] — YYYY-MM-DD
### Added
- [feature]
### Changed
- [change]
### Fixed
- [bug fix]
### Performance
- [improvement]
```

## Reference
- Keep a Changelog: https://keepachangelog.com/
- App Store Connect: https://developer.apple.com/app-store-connect/

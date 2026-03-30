# /onboard — Onboard a New Team Member

Guide onboarding for a new developer, designer, or stakeholder joining the project.

## Process

### 1. Determine Role
Ask: what is the new team member's role?
- iOS Developer
- Designer (UI/UX)
- Producer/PM
- QA Engineer
- External stakeholder

### 2. Generate Role-Specific Onboarding

#### For iOS Developers
Point them to:
1. `CLAUDE.md` — project overview and conventions
2. `.claude/docs/technical-preferences.md` — stack and architecture decisions
3. `docs/architecture/` — ADRs explaining key choices
4. `design/prd/app-concept.md` — what we're building
5. `design/prd/systems-index.md` — all feature systems
6. `tests/` — how to run the test suite

Setup checklist:
- [ ] Xcode [version] installed
- [ ] Apple Developer account added to team
- [ ] Sign in to App Store Connect
- [ ] Clone repo and build succeeds
- [ ] Instruments installed and accessible
- [ ] Swift: https://www.swift.org/documentation/
- [ ] iOS SDK: https://developer.apple.com/documentation/

#### For Designers
Point them to:
1. `design/prd/app-concept.md` — app vision
2. HIG: https://developer.apple.com/design/human-interface-guidelines/
3. `.claude/docs/coding-standards.md` — accessibility requirements
4. `assets/art/` — existing assets

#### For Producers/PMs
Point them to:
1. `design/prd/app-concept.md` — app concept
2. `design/prd/systems-index.md` — feature map
3. `production/sprints/` — sprint history
4. App Store Review Guidelines: https://developer.apple.com/app-store/review/guidelines/

### 3. First Week Checklist
Generate a personalized first-week checklist based on role and current project stage.

## Reference
- https://developer.apple.com/documentation/
- https://www.swift.org/documentation/

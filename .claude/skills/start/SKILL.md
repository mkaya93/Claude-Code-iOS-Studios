# /start — iOS Project Onboarding

You are the onboarding guide for a new Claude Code iOS Studios project.

## Goal
Help the user configure their project from scratch: platform target, app concept, minimum iOS version, and initial directory structure.

## Step 1 — Detect Project State

Check if the project already has configuration:
- Read `CLAUDE.md` for existing platform configuration
- Read `.claude/docs/technical-preferences.md` for existing settings
- Check for any `.swift` files in `src/`

If the project appears already configured, confirm with the user before overwriting.

## Step 2 — Gather App Information

Ask the user these questions (you may ask all at once):

1. **App Concept**: What kind of iOS app is this? (game, productivity, social, utility, etc.)
2. **Minimum iOS Version**: What is the minimum iOS version to support? (Recommend iOS 17 for @Observable and NavigationStack)
3. **Primary UI Framework**: SwiftUI (recommended for new projects) or UIKit?
4. **App Features**: Which Apple frameworks will you need?
   - [ ] SpriteKit (2D game)
   - [ ] RealityKit/ARKit (3D/AR)
   - [ ] GameKit/Game Center
   - [ ] Core ML / Vision
   - [ ] CloudKit (sync)
   - [ ] Push Notifications
   - [ ] In-App Purchases (StoreKit 2)
   - [ ] Widget Extension
5. **Team Size**: Solo developer, small team (2-5), or larger?

## Step 3 — Configure the Project

After gathering answers, update these files:

### Update `.claude/docs/technical-preferences.md`
Fill in:
- Platform: iOS [version]+
- Language: Swift [version]
- UI Framework: SwiftUI / UIKit
- Min deployment: iOS [version]
- Swift version: 5.10 / 6.0

### Create `design/prd/app-concept.md`
Use this template:
```markdown
# App Concept

## App Name
[Name]

## One-Line Pitch
[Single sentence describing the app]

## Target User
[Who is this for?]

## Core Value Proposition
[Why would someone download this?]

## Key Features (MVP)
1.
2.
3.

## Platform
- iOS [version]+
- iPhone / iPad / Universal

## Monetization
[ ] Free, [ ] Paid, [ ] Freemium, [ ] Subscription
```

### Create Initial Directory Structure
Create `.gitkeep` files in:
- `src/app/`
- `src/features/`
- `src/ui/`
- `src/data/`
- `src/networking/`
- `design/prd/`
- `design/ux/flows/`
- `design/narrative/`
- `assets/art/`
- `assets/audio/`
- `tests/unit/`
- `tests/ui/`
- `production/session-state/`
- `production/session-logs/`

## Step 4 — Next Steps

After configuration, tell the user:
1. **`/brainstorm`** — Explore feature ideas before committing to a design
2. **`/design-system`** — Design a specific feature with a full PRD
3. **`/prototype`** — Build a quick SwiftUI prototype to validate an idea

Reference: https://developer.apple.com/documentation/

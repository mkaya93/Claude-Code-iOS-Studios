# Claude Code iOS Studios

> A complete iOS mobile development environment powered by 43 coordinated Claude Code subagents — covering every discipline from Swift architecture to App Store release.

---

## What Is This?

Claude Code iOS Studios is a project template that brings a full "studio" team structure to iOS development via Claude Code's subagent system. Instead of one general-purpose assistant, you get 43 specialized agents — each owning a specific domain, each referencing official Apple documentation — coordinated through 38 slash-command skills and enforced by 11 path-scoped coding rules.

Think of it as having a full iOS team on call: architects, SwiftUI specialists, QA leads, a release manager, accessibility auditors, and more — all in one Claude Code session.

---

## Requirements

- [Claude Code](https://claude.ai/code) (CLI, desktop app, or IDE extension)
- Claude API access (Anthropic account)
- macOS with Xcode installed (for actual iOS development)
- Git

---

## Setup

### 1. Clone or copy this template

```bash
git clone <this-repo> MyApp
cd MyApp
```

### 2. Open in Claude Code

```bash
claude
```

Or open the folder in the Claude Code desktop app / VS Code extension.

### 3. Run onboarding

```
/start
```

This guides you through configuring your app concept, iOS deployment target, and initial directory structure. Takes about 5 minutes.

---

## How It Works

### Agents

Agents are Claude Code subprocesses defined in `.claude/agents/`. Each agent has a specific role, a set of tools it can use, and instructions scoped to its domain. When you ask about SwiftUI animations, the `swiftui-specialist` answers. When you need to plan a sprint, the `producer` takes over.

You don't need to invoke agents by name — Claude Code selects the right agent based on your request. You can also invoke them explicitly: `@swiftui-specialist implement this view`.

### Skills (Slash Commands)

Skills are pre-built workflows in `.claude/skills/`. Type `/skill-name` to run one. Each skill is a structured prompt that guides Claude through a multi-step process — writing a PRD, planning a sprint, running a privacy audit, and so on.

### Rules

Path-scoped rules in `.claude/rules/` are automatically applied based on which files you're editing. Working in `src/features/`? The `feature-code` rule enforces `async/await`, `@MainActor`, no force unwraps, and localization requirements. Working in `src/ui/`? The `ui-code` rule enforces Dynamic Type, VoiceOver labels, and 44pt touch targets.

### Hooks

Bash hooks in `.claude/hooks/` run automatically at key events — session start (shows project status), pre-commit (validates PRD sections, JSON files), pre-push (warns on main branch), and more.

---

## Agent Reference

### iOS Platform Specialists

| Agent | Owns |
|-------|------|
| `ios-specialist` | All iOS APIs; delegates to sub-specialists |
| `swiftui-specialist` | SwiftUI views, `@Observable`, `.task`, animations |
| `uikit-specialist` | UIKit view hierarchy, Auto Layout, diffable data sources |
| `metal-specialist` | Metal shaders, GPU pipelines, MSL, GPU Frame Debugger |
| `spritekit-specialist` | 2D game scenes, physics, texture atlases |
| `scenekit-realitykit-specialist` | 3D, AR, RealityKit entity-component system, ARKit |
| `gamekit-specialist` | Game Center, leaderboards, achievements, multiplayer |
| `xcode-specialist` | Build system, Swift Package Manager, signing, Xcode Cloud |
| `coreml-specialist` | Core ML inference, Vision, Natural Language, Create ML |

### Leadership

| Agent | Owns |
|-------|------|
| `creative-director` | Visual identity, HIG compliance, creative conflicts (Opus) |
| `technical-director` | Architecture, Swift concurrency strategy, tech decisions (Opus) |
| `producer` | Sprints, milestones, App Store release timeline |
| `app-designer` | PRDs, user flows, feature rules |
| `lead-programmer` | Code standards, Swift 6, code review |
| `art-director` | Visual style guide, asset standards, app icon |
| `audio-director` | Sonic identity, AVFoundation strategy, mix |
| `qa-lead` | Test strategy, release quality gates, bug triage |
| `release-manager` | App Store submission, TestFlight, signing, version management |

### Engineering

| Agent | Owns |
|-------|------|
| `feature-programmer` | Feature ViewModels, business logic, Swift implementations |
| `ios-core-programmer` | App lifecycle, scene management, background tasks, DI |
| `ui-programmer` | SwiftUI screens, navigation, animations, data binding |
| `network-programmer` | URLSession, async API clients, offline sync, WebSocket |
| `ai-programmer` | Core ML pipelines, Vision, Natural Language features |
| `tools-programmer` | Build scripts, Xcode extensions, code generation tools |

### Design & Content

| Agent | Owns |
|-------|------|
| `ux-designer` | User flows, interaction patterns, information architecture |
| `screen-designer` | Screen layouts, navigation maps, empty/error states |
| `systems-designer` | Feature mechanics, formulas, state machines |
| `economy-designer` | IAP, StoreKit 2, resource economy, ethical monetization |
| `writer` | Onboarding copy, UI text, notifications, error messages |

### Quality & Operations

| Agent | Owns |
|-------|------|
| `qa-tester` | XCTest/Swift Testing test cases, bug reports, device matrix |
| `performance-analyst` | Instruments profiling, MetricKit, performance budgets |
| `accessibility-specialist` | VoiceOver, Dynamic Type, Reduce Motion, WCAG compliance |
| `security-engineer` | Keychain, ATS, privacy compliance, vulnerability review |
| `localization-lead` | String Catalogs, RTL support, translation pipeline |
| `devops-engineer` | Xcode Cloud / GitHub Actions CI/CD, code signing automation |
| `analytics-engineer` | Event tracking, ATT compliance, A/B testing |
| `prototyper` | Throwaway SwiftUI prototypes for concept validation |
| `live-ops-designer` | Post-launch events, push notifications, retention |
| `community-manager` | App Store notes, reviews, player communication |

---

## Skill Reference

### Pre-Production

| Command | What it does |
|---------|-------------|
| `/start` | Onboarding: configure app concept, platform, directory structure |
| `/setup-platform` | Set iOS deployment target, Swift version, architecture, performance budgets |
| `/brainstorm` | Generate and evaluate 3–5 approaches to a feature or problem |
| `/prototype` | Scaffold a throwaway SwiftUI prototype in `prototypes/` |

### Design & Architecture

| Command | What it does |
|---------|-------------|
| `/design-system` | Write a full 8-section PRD in `design/prd/` |
| `/design-review` | Review a PRD for completeness, HIG alignment, technical feasibility |
| `/map-systems` | Audit all features; generate `design/prd/systems-index.md` |
| `/architecture-decision` | Record an Architecture Decision Record (ADR) |
| `/scope-check` | Evaluate a feature request against MVP scope and App Store viability |

### Development

| Command | What it does |
|---------|-------------|
| `/code-review` | Structured Swift code review: concurrency, safety, HIG, testing |
| `/tech-debt` | Audit codebase for TODOs, deprecated APIs, force unwraps, old patterns |
| `/reverse-document` | Generate a PRD or doc comments from existing undocumented code |
| `/project-stage-detect` | Detect current stage (Concept → Pre-Production → Production → Alpha → Beta → Release) |

### Quality & Testing

| Command | What it does |
|---------|-------------|
| `/bug-report` | File a structured bug report with severity, steps, environment |
| `/perf-profile` | Guide an Instruments profiling session (Time Profiler, Allocations, Leaks) |
| `/privacy-check` | Audit Privacy Manifest, permissions, data handling, ATT compliance |
| `/accessibility-check` | Full VoiceOver, Dynamic Type, Reduce Motion audit |
| `/asset-audit` | Audit assets for naming, missing variants, format issues |

### Production Planning

| Command | What it does |
|---------|-------------|
| `/sprint-plan` | Plan a sprint with P0/P1/P2 items and Definition of Done |
| `/milestone-review` | Formal milestone gate: assess completion, quality, and risk |
| `/gate-check` | Quality gate assessment for stage transitions |
| `/retrospective` | Sprint or release retrospective (went well / didn't / learned / change) |

### Release

| Command | What it does |
|---------|-------------|
| `/release-checklist` | Complete App Store release checklist (code, privacy, assets, build) |
| `/launch-checklist` | Launch day coordination: T-24h, T-0, T+1h, T+24h, T+72h |
| `/testflight-report` | TestFlight beta report: stability, feedback, pass/fail recommendation |
| `/hotfix` | Production hotfix process: assess, branch, fix, expedited review |
| `/changelog` | Generate user-facing changelog from git history or sprint notes |
| `/patch-notes` | Write App Store "What's New" release notes |

### Localization & Content

| Command | What it does |
|---------|-------------|
| `/localize` | Add a locale: find hardcoded strings, validate String Catalog, RTL checklist |
| `/onboard` | Generate role-specific onboarding for a new team member |

### Team Coordination

| Command | What it does |
|---------|-------------|
| `/team-ios` | Coordinate iOS dev team across specialists for a feature |
| `/team-feature` | End-to-end feature shipping: design → architecture → implementation → QA |
| `/team-release` | Full App Store release coordination across all departments |
| `/team-polish` | Polish sprint: visual, interaction, performance, accessibility, copy |
| `/team-audio` | Coordinate audio implementation: AVAudioSession, SFX, mixing |
| `/team-ui` | Coordinate UI/UX design → implementation → accessibility |

---

## Path-Scoped Rules

These rules are automatically applied based on the file path being edited — no manual invocation needed.

| Rule | Applies to | Enforces |
|------|-----------|---------|
| `feature-code` | `src/features/**` | `async/await`, `@MainActor`, no force unwrap, protocol interfaces |
| `ui-code` | `src/ui/**` | `String(localized:)`, Dynamic Type, `accessibilityLabel`, Reduce Motion, 44pt targets |
| `network-code` | `src/networking/**` | `async/await`, `actor` for shared state, HTTPS only, no PII in logs |
| `data-code` | `src/data/**` | SwiftData/CoreData, Keychain for secrets, `Sendable+Codable` models |
| `ios-app-code` | `src/app/**` | `@main`, `scenePhase` handling, Privacy Manifest required |
| `shader-code` | `src/shaders/**`, `assets/shaders/**` | `lowercase_underscore.metal`, `half` precision, buffer index constants |
| `data-files` | `assets/data/**` | Valid JSON, camelCase keys, version field, unit suffixes |
| `design-docs` | `design/prd/**` | 8 required PRD sections including HIG Compliance |
| `test-standards` | `tests/**` | XCTest + Swift Testing patterns, Arrange/Act/Assert, no shared state |
| `prototype-code` | `prototypes/**` | Relaxed standards, README required, never import to `src/` |

---

## Project Structure

```
Claude-Code-iOS-Studios/
│
├── CLAUDE.md                      # Master configuration — loaded every session
├── README.md                      # This file
├── .gitignore                     # Ignores DerivedData, .p12, session state
│
├── .claude/
│   ├── settings.json              # Hooks config, allowed/denied Bash commands
│   ├── statusline.sh              # Status line script (shows project stage)
│   ├── agents/                    # 43 agent definitions
│   ├── skills/                    # 38 slash-command workflows
│   ├── rules/                     # 11 path-scoped coding rules
│   ├── hooks/                     # 8 automation hooks
│   └── docs/                      # Shared docs (standards, coordination, context)
│
├── src/
│   ├── app/                       # @main entry, lifecycle, dependency injection
│   ├── features/                  # Feature modules (one folder per feature)
│   ├── ui/                        # Shared SwiftUI components and design system
│   ├── data/                      # SwiftData, CoreData, Keychain, persistence
│   ├── networking/                # URLSession API clients, models
│   ├── ai/                        # Core ML, Vision, Natural Language
│   └── shaders/                   # Metal shader source files (.metal)
│
├── design/
│   ├── prd/                       # Product Requirements Documents (8-section format)
│   ├── ux/flows/                  # User flow diagrams and screen maps
│   ├── narrative/                 # Story, lore, dialogue scripts
│   └── audio/                     # SFX specs, audio event docs
│
├── assets/
│   ├── art/                       # Source art, Asset Catalogs (.xcassets)
│   ├── audio/                     # SFX (.caf) and music (.m4a) files
│   ├── shaders/                   # Compiled/referenced shader assets
│   └── data/                      # JSON config files (tuning, balance, content)
│
├── tests/
│   ├── unit/                      # XCTest and Swift Testing unit tests
│   ├── ui/                        # XCUITest automation tests
│   └── performance/               # XCTest performance tests
│
├── prototypes/                    # Throwaway SwiftUI prototypes (isolated from src/)
│
├── docs/
│   ├── engine-reference/ios/      # iOS/Swift version reference (VERSION.md)
│   ├── architecture/              # Architecture Decision Records (ADRs)
│   ├── performance/               # Instruments profile reports
│   ├── bugs/                      # Bug reports
│   └── postmortems/               # Incident post-mortems
│
├── tools/scripts/                 # Swift and bash build/pipeline scripts
│
└── production/
    ├── sprints/                   # Sprint files (sprint-N.md)
    ├── milestones/                # Milestone definitions and reviews
    ├── releases/                  # Release notes, App Store assets
    ├── retrospectives/            # Sprint and release retrospectives
    ├── session-state/             # active.md — context recovery across sessions
    └── session-logs/              # Session audit trail
```

---

## Development Standards

### Swift

- **Version**: Swift 5.10+ (Swift 6 strict concurrency enforced project-wide)
- **Concurrency**: `async/await` and `actor` — no raw `DispatchQueue` in new code
- **UI isolation**: `@MainActor` on all view-touching code
- **Sendability**: `Sendable` conformance at all async boundaries
- **Safety**: No force unwraps (`!`) without a justification comment
- **APIs**: Document all public APIs with `///` doc comments

Reference: [swift.org/documentation](https://www.swift.org/documentation/)

### iOS Platform

- **UI Framework**: SwiftUI for new screens; UIKit for complex custom views
- **Data Binding**: `@Observable` (iOS 17+) over `ObservableObject`
- **Navigation**: `NavigationStack` + type-safe `NavigationPath`
- **Persistence**: SwiftData (iOS 17+) or CoreData; Keychain for secrets
- **Networking**: `URLSession` with `async/await`; `actor` for shared client state

Reference: [developer.apple.com/documentation](https://developer.apple.com/documentation/)

### Apple Human Interface Guidelines

- All UI must comply with HIG before shipping
- Minimum touch target: 44×44pt
- Dynamic Type: all text must scale from xSmall to AX5
- VoiceOver: every interactive element needs `accessibilityLabel`
- Reduce Motion: all animations have a non-motion alternative
- Dark Mode: all colors and images have dark variants

Reference: [developer.apple.com/design/human-interface-guidelines](https://developer.apple.com/design/human-interface-guidelines/)

### App Store

- Privacy Manifest (`PrivacyInfo.xcprivacy`) required for all submissions
- No private API usage
- No hardcoded secrets — Keychain only
- ATT framework required if using IDFA
- Age rating must accurately reflect content

Reference: [developer.apple.com/app-store/review/guidelines](https://developer.apple.com/app-store/review/guidelines/)

---

## Workflow Examples

### Starting a new feature

```
1. /brainstorm          → explore 3-5 approaches
2. /prototype           → validate the best idea in SwiftUI
3. /design-system       → write the full PRD
4. /architecture-decision → record any new patterns
5. /team-feature        → coordinate implementation
6. /code-review         → review the implementation
```

### Preparing an App Store release

```
1. /gate-check          → verify Beta → Release quality gate
2. /release-checklist   → work through the full submission checklist
3. /privacy-check       → audit Privacy Manifest and permissions
4. /testflight-report   → confirm crash-free rate and feedback
5. /patch-notes         → write App Store "What's New"
6. /launch-checklist    → coordinate launch day
```

### Debugging a performance issue

```
1. /perf-profile        → guided Instruments session
2. /bug-report          → document the finding
3. /code-review         → review the fix
```

### Onboarding a new developer

```
/onboard                → generates role-specific setup checklist
                          and pointers to key docs
```

---

## Context Management

Claude Code sessions have finite context. This project uses a file-backed state strategy:

- **`production/session-state/active.md`** — living checkpoint; updated after each milestone
- After any session interruption, read this file to recover context
- The `session-start` hook automatically previews it at the start of each session
- Compact proactively at ~60–70% context usage with `/compact`

The `<!-- STATUS -->` block in `active.md` feeds the status line:
```markdown
<!-- STATUS -->
Epic: Authentication
Feature: Sign in with Apple
Task: Implement token refresh
<!-- /STATUS -->
```

---

## Hooks Reference

| Hook | Trigger | What it does |
|------|---------|-------------|
| `session-start.sh` | Session start | Shows branch, commits, sprint status, active bugs |
| `detect-gaps.sh` | Session start | Flags missing PRDs, undocumented features, fresh project |
| `validate-commit.sh` | Pre-commit | Validates PRD sections, JSON files, TODO owner tags |
| `validate-push.sh` | Pre-push | Warns when pushing to `main`/`master`/`release/*` |
| `validate-assets.sh` | Pre-tool (Write) | Checks asset naming, JSON format, `.strings` syntax |
| `pre-compact.sh` | Pre-compact | Saves session state to `active.md` before compaction |
| `session-stop.sh` | Session stop | Archives session to `session-logs/`, logs uncommitted changes |
| `log-agent.sh` | Subagent start | Appends agent name + timestamp to `agent-audit.log` |

---

## Version Reference

| Component | Version |
|-----------|---------|
| iOS SDK | iOS 18 |
| Swift | Swift 6 |
| Xcode | Xcode 16 |
| SwiftUI | iOS 17+ features enabled (RealityView, @Observable) |

Full details: `docs/engine-reference/ios/VERSION.md`

---

## Official Documentation Links

| Framework | Documentation |
|-----------|--------------|
| Swift | https://www.swift.org/documentation/ |
| Swift API Design Guidelines | https://www.swift.org/documentation/api-design-guidelines/ |
| Swift Concurrency | https://developer.apple.com/documentation/swift/concurrency |
| SwiftUI | https://developer.apple.com/documentation/swiftui |
| UIKit | https://developer.apple.com/documentation/uikit |
| Metal | https://developer.apple.com/documentation/metal |
| SpriteKit | https://developer.apple.com/documentation/spritekit |
| RealityKit | https://developer.apple.com/documentation/realitykit |
| ARKit | https://developer.apple.com/documentation/arkit |
| GameKit | https://developer.apple.com/documentation/gamekit |
| Core ML | https://developer.apple.com/documentation/coreml |
| Vision | https://developer.apple.com/documentation/vision |
| AVFoundation | https://developer.apple.com/documentation/avfoundation |
| StoreKit 2 | https://developer.apple.com/documentation/storekit |
| CloudKit | https://developer.apple.com/documentation/cloudkit |
| XCTest | https://developer.apple.com/documentation/xctest |
| Swift Testing | https://developer.apple.com/documentation/testing |
| Xcode | https://developer.apple.com/documentation/xcode |
| Xcode Cloud | https://developer.apple.com/documentation/xcode/xcode-cloud |
| HIG | https://developer.apple.com/design/human-interface-guidelines/ |
| App Store Review Guidelines | https://developer.apple.com/app-store/review/guidelines/ |
| Privacy Manifest | https://developer.apple.com/documentation/bundleresources/privacy-manifest-files |
| Accessibility | https://developer.apple.com/documentation/accessibility |

---

## License

MIT — use this template for any iOS project, commercial or personal.

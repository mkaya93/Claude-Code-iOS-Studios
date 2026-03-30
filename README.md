# Claude Code iOS Studios

iOS mobile development managed through coordinated Claude Code subagents.
Each agent owns a specific domain, enforcing separation of concerns and quality.

## What Is This?

A Claude Code project template for building iOS apps with a full "game studio"-style agent architecture. Every discipline has a dedicated agent: design, engineering, QA, audio, localization, live ops, and more — all referencing official Apple documentation.

## Quick Start

```
/start
```

This runs the onboarding flow: configure your app concept, platform target, and directory structure.

## Architecture

### iOS Platform Agents
| Agent | Owns |
|-------|------|
| `ios-specialist` | All iOS APIs, delegates to sub-specialists |
| `swiftui-specialist` | SwiftUI views, data flow, animations |
| `uikit-specialist` | UIKit view hierarchy, Auto Layout, diffable data |
| `metal-specialist` | Metal shaders, GPU pipelines, MSL |
| `spritekit-specialist` | 2D game scenes, physics, atlases |
| `scenekit-realitykit-specialist` | 3D, AR, RealityKit entity-component |
| `gamekit-specialist` | Game Center, leaderboards, multiplayer |
| `xcode-specialist` | Build system, SPM, signing, CI/CD |
| `coreml-specialist` | Core ML inference, Vision, Natural Language |

### Leadership Agents
| Agent | Owns |
|-------|------|
| `creative-director` | Visual identity, HIG compliance, creative conflicts |
| `technical-director` | Architecture, Swift concurrency strategy, tech decisions |
| `producer` | Sprints, milestones, App Store timeline |
| `app-designer` | PRDs, user flows, feature rules |
| `lead-programmer` | Code standards, Swift 6, code review |

### Specialist Agents (34 total)
Art, audio, QA, security, accessibility, performance, localization, narrative, UX, DevOps, analytics, live ops, and more — all referencing `developer.apple.com/documentation/` and `swift.org`.

## Skills (Slash Commands)

| Skill | Purpose |
|-------|---------|
| `/start` | Onboard a new project |
| `/setup-platform` | Configure iOS platform settings |
| `/brainstorm` | Generate and evaluate feature ideas |
| `/prototype` | Create a SwiftUI proof-of-concept |
| `/design-system` | Write a full PRD |
| `/map-systems` | Audit all feature systems |
| `/architecture-decision` | Record an ADR |
| `/project-stage-detect` | Detect current dev stage |
| `/code-review` | Swift code review |
| `/design-review` | PRD review |
| `/sprint-plan` | Plan a sprint |
| `/release-checklist` | App Store release checklist |
| `/launch-checklist` | Launch day coordination |
| `/gate-check` | Quality gate assessment |
| `/perf-profile` | Instruments profiling session |
| `/bug-report` | File a structured bug report |
| `/tech-debt` | Technical debt audit |
| `/scope-check` | MVP scope evaluation |
| `/hotfix` | Production hotfix process |
| `/privacy-check` | Privacy/App Store compliance audit |
| `/localize` | Add localization for a locale |
| `/asset-audit` | Audit assets for standards |
| `/changelog` | Generate changelog |
| `/patch-notes` | Write App Store release notes |
| `/testflight-report` | TestFlight beta report |
| `/retrospective` | Sprint/release retrospective |
| `/onboard` | Onboard a new team member |
| `/team-ios` | Coordinate iOS dev team |
| `/team-feature` | Ship a complete feature |
| `/team-release` | Coordinate App Store release |
| `/team-polish` | Polish sprint coordination |
| `/team-audio` | Coordinate audio implementation |
| `/team-narrative` | Coordinate narrative content |
| `/team-ui` | Coordinate UI/UX team |
| `/team-level` | Coordinate content design |
| `/balance-check` | Verify system balance |
| `/milestone-review` | Formal milestone review |

## Standards

- **Language**: Swift (https://www.swift.org/documentation/)
- **UI Framework**: SwiftUI (recommended) / UIKit
- **Concurrency**: async/await + actors (Swift Concurrency)
- **Testing**: XCTest + Swift Testing framework
- **Accessibility**: VoiceOver, Dynamic Type, Reduce Motion mandatory
- **Privacy**: Privacy Manifest required, Keychain for secrets
- **Documentation**: All Apple doc references point to https://developer.apple.com/documentation/

## Project Structure

```
src/app/          # App entry point, lifecycle, DI
src/features/     # Feature modules (one folder per feature)
src/ui/           # Shared UI components
src/data/         # Persistence, SwiftData, CoreData
src/networking/   # URLSession API clients
src/ai/           # Core ML, Vision, NL features
src/shaders/      # Metal shader files (.metal)
design/prd/       # Product Requirements Documents
design/ux/        # User flows and screen specs
design/narrative/ # Story, lore, dialogue
assets/           # Art, audio, shaders, data
tests/            # Unit, integration, UI tests
production/       # Sprints, milestones, releases
```

## First Run

1. Open this directory in Claude Code
2. Type `/start` to begin onboarding
3. Answer questions about your app concept
4. Run `/design-system` to design your first feature

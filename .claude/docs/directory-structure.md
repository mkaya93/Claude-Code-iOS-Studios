# Directory Structure

```text
/
├── CLAUDE.md                    # Master configuration
├── .claude/                     # Agent definitions, skills, hooks, rules, docs
├── src/                         # Swift source code
│   ├── app/                     # App delegate, scene delegate, app lifecycle (ios-app-code rules)
│   ├── features/                # Feature modules — screens, flows, business logic (feature-code rules)
│   ├── ui/                      # Reusable SwiftUI/UIKit components (ui-code rules)
│   ├── data/                    # Data layer — models, repositories, persistence (data-code rules)
│   ├── networking/              # Network layer — URLSession, WebSocket (network-code rules)
│   ├── ai/                      # Core ML models, AI features (ai-code rules)
│   ├── shaders/                 # Metal shader source (.metal files) (shader-code rules)
│   └── tools/                   # Build tools, debug utilities
├── assets/                      # App assets
│   ├── art/                     # Images, icons (Asset Catalogs)
│   ├── audio/                   # Sound files (AVFoundation compatible)
│   ├── vfx/                     # Particle systems, visual effects
│   ├── shaders/                 # Compiled shader resources
│   ├── data/                    # JSON config and data files (data-files rules)
│   └── localization/            # .strings and .stringsdict files
├── design/                      # Product & design documents
│   ├── prd/                     # Product Requirements Documents (design-docs rules)
│   ├── screens/                 # Screen and flow design docs
│   ├── narrative/               # Story, character, lore (narrative rules)
│   └── levels/                  # Level and world design
├── docs/                        # Technical documentation
│   ├── architecture/            # ADRs and architecture docs
│   ├── api/                     # API documentation
│   └── engine-reference/        # iOS SDK version reference (version-pinned)
│       └── ios/
├── tests/                       # Test suites (test-standards rules)
│   ├── unit/                    # XCTest unit tests
│   ├── integration/             # Integration tests
│   ├── performance/             # XCTest performance tests
│   └── ui/                      # XCUITest UI automation
├── tools/                       # Build and pipeline tools
│   ├── ci/                      # Xcode Cloud / GitHub Actions configs
│   ├── build/                   # Build scripts, Fastlane
│   └── asset-pipeline/          # Asset processing scripts
├── prototypes/                  # Throwaway SwiftUI prototypes (prototype-code rules)
│   └── [name]/
│       ├── README.md            # Required: hypothesis, findings
│       └── [prototype code]
└── production/                  # Production management
    ├── sprints/
    ├── milestones/
    ├── releases/
    ├── session-state/           # Ephemeral session state (gitignored)
    └── session-logs/            # Session audit trail (gitignored)
```

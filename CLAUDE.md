# Claude Code iOS Studios — iOS Development Agent Architecture

iOS app and game development managed through coordinated Claude Code subagents.
Each agent owns a specific domain, enforcing separation of concerns and quality.

## Technology Stack

- **Platform**: iOS / iPadOS / tvOS
- **Language**: Swift (primary), Objective-C (legacy interop)
- **Frameworks**: [CHOOSE: SwiftUI / UIKit / SpriteKit / SceneKit / RealityKit / Metal]
- **Version Control**: Git with trunk-based development
- **Build System**: Xcode + Swift Package Manager
- **Asset Pipeline**: Asset Catalogs + Xcode Build System

> **Note**: iOS specialist agents cover SwiftUI, UIKit, SpriteKit, Metal, GameKit,
> RealityKit/ARKit, Xcode, and Core ML. Use the set matching your project.

## Project Structure

@.claude/docs/directory-structure.md

## iOS SDK Version Reference

@docs/engine-reference/ios/VERSION.md

## Technical Preferences

@.claude/docs/technical-preferences.md

## Coordination Rules

@.claude/docs/coordination-rules.md

## Collaboration Protocol

**User-driven collaboration, not autonomous execution.**
Every task follows: **Question -> Options -> Decision -> Draft -> Approval**

- Agents MUST ask "May I write this to [filepath]?" before using Write/Edit tools
- Agents MUST show drafts or summaries before requesting approval
- Multi-file changes require explicit approval for the full changeset
- No commits without user instruction

See `docs/COLLABORATIVE-DESIGN-PRINCIPLE.md` for full protocol and examples.

> **First session?** If the project has no platform configured and no app concept,
> run `/start` to begin the guided onboarding flow.

## Coding Standards

@.claude/docs/coding-standards.md

## Context Management

@.claude/docs/context-management.md

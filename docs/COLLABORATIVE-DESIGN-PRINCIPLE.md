# Collaborative Design Principle

## Core Philosophy

**User-driven collaboration, not autonomous execution.**

Every task follows: **Question → Options → Decision → Draft → Approval**

- Agents ask questions first, never assume
- Present 2-3 options with trade-offs and Apple HIG implications
- User decides — agents do not proceed without explicit approval
- Show the draft, ask "May I write this to [filepath]?"
- Write only after approval

## Apple Platform Compliance

All agents verify against official Apple documentation before suggesting:
- APIs: https://developer.apple.com/documentation/
- UI patterns: https://developer.apple.com/design/human-interface-guidelines/
- App Store: https://developer.apple.com/app-store/review/guidelines/
- Swift language: https://www.swift.org

When an API may have changed since training data, agents use WebSearch to confirm.

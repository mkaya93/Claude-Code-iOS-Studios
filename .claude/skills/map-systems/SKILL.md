# /map-systems — Map All Feature Systems

Audit and document all feature systems in the project.

## Goal
Produce `design/prd/systems-index.md` — a map of every feature system, its status, and its dependencies.

## Process

### 1. Discover Existing Systems
Scan:
- `design/prd/` for approved PRDs
- `src/features/` for implemented features
- `src/app/` for core app systems
- `prototypes/` for validated prototypes awaiting implementation

### 2. Catalog Each System

For each system found, record:
| System | PRD | Status | iOS Frameworks | Dependencies |
|--------|-----|--------|----------------|--------------|

Status values: `Concept | Prototype | PRD | Implementing | Shipped | Deprecated`

### 3. Identify Gaps
- Features in `src/` without a PRD (undocumented)
- PRDs without implementation
- Dependencies that are missing or not yet designed

### 4. Identify Integration Points
Draw a dependency graph (text-based):
```
Authentication
  └── User Profile
        ├── Leaderboard
        └── Notifications
```

### 5. Output File

Write to `design/prd/systems-index.md`:
```markdown
# Systems Index
**Generated**: [Date]

## System Map
[dependency graph]

## System Catalog
[table]

## Gaps
[list undocumented or unimplemented]

## Next Priority
[recommendation based on gaps]
```

## Reference
- https://developer.apple.com/documentation/

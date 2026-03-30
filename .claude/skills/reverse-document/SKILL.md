# /reverse-document — Reverse-Engineer Documentation

Generate documentation from existing code that lacks it.

## Goal
Read existing Swift code and produce either:
- A PRD in `design/prd/` (for feature documentation)
- An architecture doc in `docs/architecture/`
- Inline code documentation (`///` doc comments)

## Process

### 1. Identify What to Document
Ask user: what file, feature, or system needs documentation?

### 2. Read the Code
Read the relevant Swift files. Understand:
- What does this code do?
- What are its inputs and outputs?
- What are its states?
- What Apple frameworks does it use?

### 3. Choose Documentation Target

**If generating a PRD** (for a feature without design docs):
Reverse-engineer the existing behavior into the 8-section PRD format.
Note in the PRD header: `**Source**: Reverse-documented from existing code`

**If generating architecture docs:**
Write to `docs/architecture/[feature]-architecture.md`:
- System overview
- Component diagram (text-based)
- Data flow
- Key decisions (even if not originally recorded)

**If adding doc comments:**
Add `///` comments to public APIs:
```swift
/// Fetches the user profile for the given identifier.
///
/// - Parameter id: The unique user identifier.
/// - Returns: A fully populated `UserProfile`.
/// - Throws: `APIError.notFound` if the user doesn't exist.
func fetchUser(id: String) async throws -> UserProfile
```

### 4. Flag Discrepancies
If the code behavior seems incomplete or inconsistent, call it out:
```markdown
> **Note**: The implementation does X, but this may not be intentional.
> Consider: [alternative approach].
```

## Reference
- Swift Documentation: https://www.swift.org/documentation/docc/
- DocC: https://developer.apple.com/documentation/docc

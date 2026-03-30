# /patch-notes — Write App Store Patch Notes

Write App Store "What's New" release notes for a version.

## Guidelines
- App Store character limit: 4000 characters
- Lead with the change most users care about
- Plain language — not technical jargon
- Acknowledge bug fixes honestly
- Consistent tone with the app's brand voice

## Process

### 1. Gather Changes
Ask the user what changed in this version, or read:
- Latest sprint file
- Fixed bug reports
- New features shipped

### 2. Draft Notes

Template:
```
What's New in v[X.Y]:

[1-sentence summary of the biggest change]

[Additional features or improvements — bullet points optional]

Bug fixes:
• [Fix 1]
• [Fix 2]

As always, thank you for your feedback!
```

For a small bug fix release:
```
v[X.Y.Z] — Bug Fix

• Fixed [description of main issue]
• [Additional fix if any]

Thank you for reporting this issue!
```

### 3. Localization
If the app is localized, the release notes should also be localized.
Create versions for each supported locale in `production/releases/v[X.Y.Z]-notes/`:
- `en.md`
- `de.md`
- `ja.md`
- etc.

### 4. Save Output
Write to `production/releases/v[X.Y.Z]-appstore-notes.md`

## Reference
- App Store Connect: https://developer.apple.com/app-store-connect/

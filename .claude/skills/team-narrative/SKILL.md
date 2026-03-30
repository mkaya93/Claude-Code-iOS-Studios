# /team-narrative — Coordinate Narrative Content

Coordinate narrative, copy, and world-building content across the team.

## Process

### 1. Content Inventory
- Narrative Director: what story content exists vs. needed?
- Read `design/narrative/` for current state
- World Builder: which lore entries are needed for current sprint?

### 2. Content Pipeline

```
World Builder → Story Bible
     ↓
Narrative Director → Story Arc + Character Profiles
     ↓
Writer → Dialogue + UI Copy
     ↓
Localization Lead → String Catalog entries
     ↓
UI Programmer → Implementation
```

### 3. Content Checklist Per Feature
- [ ] All dialogue ≤ 120 chars per line (mobile constraint)
- [ ] All copy through String Catalog (no hardcoded strings)
- [ ] All strings have localization-ready context comments
- [ ] Culturally sensitive content flagged for loc review
- [ ] All narrative text accessible via VoiceOver

### 4. Consistency Review
- Narrative Director: review all copy for voice consistency
- World Builder: check lore consistency
- No character inconsistencies between features

### 5. Localization Handoff
When content is final:
- Export String Catalog via Xcode (Product > Export Localizations)
- Send to translators with context screenshots
- Estimated expansion: German +30%, Japanese -20% (plan layouts accordingly)

## Reference
- String Catalogs: https://developer.apple.com/documentation/xcode/localizing-and-varying-text-with-a-string-catalog
- Accessibility: https://developer.apple.com/documentation/accessibility

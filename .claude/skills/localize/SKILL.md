# /localize — Add Localization for a Locale

Add or audit localization support for a target language/locale.

## Process

### 1. Audit Current State
- Check Xcode project for existing localizations
- Scan `src/` for `String(localized:)` usage
- Find any hardcoded user-facing strings (strings not in String Catalog)

### 2. Find Hardcoded Strings

Search for patterns that bypass localization:
```swift
// These are problems:
Text("Hello, World!")  // Hardcoded
label.text = "Submit"  // Hardcoded

// These are correct:
Text("home.greeting", tableName: "Main")
String(localized: "button.submit", table: "Main")
```

### 3. Add a New Locale

Xcode steps (guide the user):
1. Project → Info → Localizations → "+" button
2. Select target locale (e.g., `de` for German, `ar` for Arabic)
3. Xcode exports existing strings for translation

### 4. RTL Checklist (for Arabic, Hebrew, Persian, Urdu)
- [ ] All layouts use leading/trailing (not left/right)
- [ ] `.environment(\.layoutDirection, .rightToLeft)` preview tested
- [ ] Directional images have mirrored variants
- [ ] SF Symbols: use `.imageFlippedForRightToLeftLayoutDirection()` where needed

### 5. String Catalog Validation
Check `Localizable.xcstrings` for:
- [ ] All keys have translations for target locale
- [ ] Plural rules defined where needed
- [ ] No empty translation values

### 6. Test the Locale
In Xcode:
- Edit Scheme → Options → App Language → [target locale]
- Run app and verify all strings display correctly

## Reference
- String Catalogs: https://developer.apple.com/documentation/xcode/localizing-and-varying-text-with-a-string-catalog
- Xcode Localization: https://developer.apple.com/documentation/xcode/localization
- Foundation Locale: https://developer.apple.com/documentation/foundation/locale

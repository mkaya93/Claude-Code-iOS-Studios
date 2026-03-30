# /asset-audit — Audit iOS App Assets

Audit all assets in the project for standards compliance.

## Process

### 1. Scan Asset Catalog
Check `assets/` and `*.xcassets` for:

**Naming Violations** (must be `lowercase_underscore`):
- Find files with uppercase letters or spaces

**Missing Variants:**
- Raster images without @2x and @3x variants
- Colors without Dark Mode variants
- Icons without all required sizes

**Format Issues:**
- Large PNG files that should be ASTC-compressed (Metal textures > 256×256)
- JPEG files (use PNG for UI assets)
- Images > 4096×4096 (single atlas limit)

### 2. Unused Assets
Find asset files that are not referenced in Swift code:
- Images never used in `Image(named:)` or Asset Catalog references
- Colors defined but not referenced

### 3. Missing Assets
Find `Image(named: "foo")` or `Color(named: "bar")` references where the asset doesn't exist in the catalog.

### 4. Audio Assets
Check `assets/audio/`:
- SFX should be CAF format
- Music should be AAC/m4a
- Verify naming: `sfx_category_action.caf`, `music_name.m4a`

### 5. Output

```markdown
# Asset Audit Report
**Date**: [Date]

## Naming Violations
[list files with wrong naming]

## Missing Variants
[list assets missing @2x/@3x or Dark Mode]

## Unused Assets
[list potentially unused files — verify before deleting]

## Missing References
[list Image/Color references with no matching asset]

## Format Issues
[list format recommendations]

## Summary
Total assets: [N]
Issues found: [N]
Estimated savings if cleaned: [estimated MB]
```

## Reference
- Asset Catalogs: https://developer.apple.com/documentation/xcode/asset-management
- HIG Icons: https://developer.apple.com/design/human-interface-guidelines/app-icons

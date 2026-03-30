# /figma-sync — Sync Figma Design to SwiftUI

Read a Figma frame or component and generate matching SwiftUI code.

## Requirements
- Figma MCP must be connected (see `.mcp.json`)
- You need a Figma file URL or frame/node ID

## Process

### 1. Get the Figma Reference
Ask the user for one of:
- A Figma file URL: `https://www.figma.com/file/XXXXXXXX/...`
- A specific frame or component name
- A node ID from the Figma URL (`?node-id=XXX`)

### 2. Read the Design via MCP
Use the Figma MCP tools to fetch:
- Frame layout and dimensions
- Child layers and their properties
- Text styles (font, size, weight, color, line-height)
- Fill colors (hex values)
- Component instances and their overrides
- Auto-layout settings (direction, spacing, padding)

### 3. Extract Design Tokens
Before generating code, identify reusable values:
- **Colors**: group by usage (primary, background, text, border)
- **Typography**: identify text style groups
- **Spacing**: find recurring spacing values → define as constants
- **Corner radii**: find recurring values

Write tokens to `src/ui/DesignTokens.swift`:
```swift
// Auto-generated from Figma — do not edit manually
// Last synced: [date]
extension Color { ... }
extension Font { ... }
enum Spacing { ... }
enum Radius { ... }
```

### 4. Generate SwiftUI View
Convert the Figma frame to a SwiftUI view in `src/ui/[ComponentName].swift`.

Follow the Figma → SwiftUI mapping:
- Auto-layout → `VStack`/`HStack` with matching spacing
- Fixed frames → `.frame(width:height:)`
- Fill → `.frame(maxWidth: .infinity)`
- Text layers → `Text` with matching font/color
- Images → `Image` with asset catalog reference
- Interactive elements → `Button` with 44pt minimum target

### 5. HIG Compliance Check
Flag any Figma decisions that conflict with iOS standards:
- Touch targets smaller than 44×44pt
- Colors with no Dark Mode consideration
- Fixed font sizes that block Dynamic Type
- Missing accessibility labels on interactive elements

### 6. Preview
Always include a `#Preview` block with multiple representative states.

### 7. Output Summary
```markdown
## Figma Sync: [Frame Name]

**Source**: [Figma URL]
**Generated**: [date]

### Files Created/Updated
- `src/ui/[Component].swift` — SwiftUI view
- `src/ui/DesignTokens.swift` — updated with N new tokens

### Design Tokens Extracted
- Colors: N
- Fonts: N
- Spacing values: N

### HIG Issues Found
- [ ] [issue] — [recommendation]

### Manual Steps Required
- [ ] Add image assets to Asset Catalog: [list]
- [ ] Review Dark Mode colors: [list]
```

## Tips
- Run `/figma-sync` once per screen or component — not the whole file at once
- After sync, run `/code-review` on the generated file
- Add generated tokens to your design system documentation

## Reference
- Figma API: https://www.figma.com/developers/api
- SwiftUI: https://developer.apple.com/documentation/swiftui
- HIG: https://developer.apple.com/design/human-interface-guidelines/

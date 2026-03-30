---
paths:
  - "assets/data/**"
---

# Data File Rules (iOS)

- All JSON files must be valid JSON — validated on commit
- Key naming: camelCase (e.g., `"playerMaxHealth"`, `"baseMovementSpeed"`)
- Every data file must have a corresponding schema doc in `docs/data-schemas/`
- No orphaned entries — every key must be referenced by code
- Include version field in all data files: `"version": "1.0"`
- Document units in key names (e.g., `"damagePerSecond"`, not `"damage"`)

## Example

```json
{
  "version": "1.0",
  "playerConfig": {
    "maxHealthPoints": 100,
    "baseMovementSpeedMetersPerSecond": 5.0,
    "attackCooldownSeconds": 0.8
  }
}
```

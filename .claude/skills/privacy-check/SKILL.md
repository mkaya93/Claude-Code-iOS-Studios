# /privacy-check — iOS Privacy Compliance Audit

Audit the app's privacy compliance for App Store submission.

## Process

### 1. Scan for Privacy-Sensitive APIs
Check `src/` for usage of APIs requiring declaration:

**Required Reason APIs** (must be in Privacy Manifest):
- `UserDefaults` — reason category: NSPrivacyAccessedAPICategoryUserDefaults
- `FileTimestamp` APIs — NSPrivacyAccessedAPICategoryFileTimestamp
- `SystemBootTime` — NSPrivacyAccessedAPICategorySystemBootTime
- `DiskSpace` — NSPrivacyAccessedAPICategoryDiskSpace
- `ActiveKeyboards` — NSPrivacyAccessedAPICategoryActiveKeyboards

Reference: https://developer.apple.com/documentation/bundleresources/privacy-manifest-files/describing-use-of-required-reason-api

### 2. Check Permission Usage
For each permission the app uses, verify:
- Usage description string exists in `Info.plist`
- Permission is actually needed (remove if not used)
- Permission is requested at the right moment (contextually, not at launch)

| Permission | Info.plist Key |
|-----------|---------------|
| Camera | NSCameraUsageDescription |
| Microphone | NSMicrophoneUsageDescription |
| Location | NSLocationWhenInUseUsageDescription |
| Contacts | NSContactsUsageDescription |
| Photos | NSPhotoLibraryUsageDescription |
| Notifications | Requested via UNUserNotificationCenter |
| Tracking (IDFA) | NSUserTrackingUsageDescription |

### 3. Privacy Manifest Check
Verify `PrivacyInfo.xcprivacy` exists and includes:
- `NSPrivacyTracking`: true/false
- `NSPrivacyTrackingDomains`: list if tracking
- `NSPrivacyCollectedDataTypes`: all data types collected
- `NSPrivacyAccessedAPITypes`: all required reason APIs used

### 4. Data Handling Audit
- No PII in crash reports or analytics
- No device identifiers stored on servers without user consent
- Keychain for all sensitive data (not UserDefaults)

### 5. Output
```markdown
## Privacy Audit
**Date**: [Date]

### ✓ Compliant
[list]

### ✗ Issues
[list with file:line references]

### Privacy Manifest Status
[ ] Exists and complete
[ ] Missing: [list required entries]
```

## Reference
- Privacy Manifest: https://developer.apple.com/documentation/bundleresources/privacy-manifest-files
- App Tracking Transparency: https://developer.apple.com/documentation/apptrackingtransparency
- App Store Privacy: https://developer.apple.com/app-store/app-privacy-details/

# /team-audio — Coordinate Audio Implementation

Coordinate the audio team for implementing sound design across the app.

## Process

### 1. Audit Current State
- Check `assets/audio/` for delivered audio files
- Review `design/audio/` for any audio event specs
- Identify gaps: designed but not delivered, delivered but not implemented

### 2. Assign Work

| Role | Task |
|------|------|
| Audio Director | Define audio events, review mix, define category volumes |
| Feature Programmer | Implement AVAudioEngine integration |
| iOS Core Programmer | AVAudioSession setup at app launch |

### 3. Implementation Checklist
- [ ] `AVAudioSession.Category` set correctly for app type
- [ ] Audio interruption handler implemented (phone calls, Siri)
- [ ] Silent Mode behavior defined and implemented
- [ ] Background audio behavior defined (if applicable)
- [ ] All SFX trigger points identified and instrumented
- [ ] Mix levels validated on device (not just simulator)

### 4. Platform Compliance
- Test with: AirPods, Bluetooth speaker, iPhone speakers, silent mode
- Ensure audio ducking works correctly (other apps, Siri)
- No audio playing through call without user intent

### 5. Accessibility
- All critical audio has a visual/haptic alternative
- VoiceOver users: audio cues must not be the only feedback

## Reference
- AVAudioEngine: https://developer.apple.com/documentation/avfaudio/avaudioengine
- AVAudioSession: https://developer.apple.com/documentation/avfaudio/avaudiosession
- AVFoundation: https://developer.apple.com/documentation/avfoundation

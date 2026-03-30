# /team-level — Coordinate Level / Content Design

Coordinate screen/level design and content for apps with designed content experiences.

## Use Cases
- Game levels and environments
- Onboarding flow design
- Tutorial sequence design
- Structured content experiences (courses, guided journeys)

## Process

### 1. Define Content Structure
- Screen Designer: map information architecture
- App Designer: define interaction rules per content type
- Narrative Director: story beats per content piece (if narrative)

### 2. Content Design Checklist (Per Level/Screen/Content)
- [ ] Clear objective: what does the user accomplish here?
- [ ] Success state defined
- [ ] Failure/empty state defined
- [ ] Pacing: appropriate difficulty/density for this point in the experience
- [ ] Accessibility: completable without color, sound, or fine motor skills

### 3. Data-Driven Content
All content values must be in data files (`assets/data/`), not code:
```json
{
  "id": "level_001",
  "title": "Getting Started",
  "difficulty": 1,
  "objectives": ["collect_3_items", "reach_exit"],
  "time_limit_seconds": 120
}
```

### 4. Testing Content
- QA Tester: play through every content piece
- Check: can it be completed? Is it too easy/hard?
- Accessibility: completable with VoiceOver active?

### 5. Content Pipeline
```
App Designer → Rules + objectives
     ↓
Screen Designer → Visual layout spec
     ↓
Writer → Dialogue/copy
     ↓
Art Director → Asset requirements
     ↓
Technical Artist → Asset delivery
     ↓
Feature Programmer → Implementation
```

## Reference
- https://developer.apple.com/documentation/

# /project-stage-detect — Detect Current Project Stage

Analyze the project state and report its current development stage.

## Stage Definitions

| Stage | Criteria |
|-------|----------|
| **Concept** | No source code, no PRD, just ideas |
| **Pre-Production** | PRDs exist, prototypes may exist, no `src/` code |
| **Production** | `src/` has active development, features being built |
| **Alpha** | Core features implemented, internal testing |
| **Beta** | TestFlight active, external testers |
| **Release** | App Store submission or shipped |
| **Live** | Shipped, post-launch operations |

## Detection Process

Check in order:
1. **Source code**: Count `.swift` files in `src/`
2. **Design docs**: Check `design/prd/app-concept.md` exists
3. **PRDs**: Count `.md` files in `design/prd/`
4. **Tests**: Check `tests/` for test files
5. **Production files**: Check `production/` for sprint/milestone files
6. **TestFlight**: Check for any Xcode Cloud or CI configuration

## Output Format

```markdown
## Project Stage: [STAGE NAME]

### Evidence
- Swift files in src/: [count]
- PRDs written: [count]
- Tests written: [count]
- Active sprint: [yes/no]

### Current Health
- [✓/✗] App concept documented
- [✓/✗] Technical preferences configured
- [✓/✗] Architecture decisions recorded
- [✓/✗] Core feature PRDs written
- [✓/✗] CI/CD configured

### Recommended Next Steps
1. [Most important action]
2. [Second action]
3. [Third action]

### Suggested Skills
- [/skill-name] — [why it applies now]
```

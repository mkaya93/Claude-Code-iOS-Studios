#!/bin/bash
# PreCompact hook: Save session state before context compaction

STATE_FILE="production/session-state/active.md"
mkdir -p "production/session-state" 2>/dev/null

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
MODIFIED=$(git diff --name-only 2>/dev/null | head -10)

if [ ! -f "$STATE_FILE" ]; then
cat > "$STATE_FILE" << EOF
# Active Session State
*Auto-created by pre-compact hook at $TIMESTAMP*

## Current Task
[Not yet recorded — update this file after each milestone]

## Branch
${BRANCH:-unknown}

## Modified Files (at compaction)
${MODIFIED:-none}

## Progress Checklist
- [ ] [Add tasks here]

## Key Decisions Made
[None recorded yet]

## Open Questions
[None]
EOF
fi

echo "=== Pre-Compact: Session state preserved ==="
echo "State file: $STATE_FILE"
echo "Read this file at session start to recover context."
echo "==========================================="

exit 0

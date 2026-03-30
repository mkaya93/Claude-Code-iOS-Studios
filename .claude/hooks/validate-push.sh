#!/bin/bash
# PreToolUse hook: Warn before pushing to protected branches

INPUT=$(cat)

if command -v jq >/dev/null 2>&1; then
    COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')
else
    COMMAND=$(echo "$INPUT" | grep -oE '"command"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/"command"[[:space:]]*:[[:space:]]*"//;s/"$//')
fi

if ! echo "$COMMAND" | grep -qE '^git[[:space:]]+push'; then
    exit 0
fi

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

if echo "$CURRENT_BRANCH" | grep -qE '^(main|master|release/.*)$'; then
    echo "⚠️  WARNING: Pushing directly to protected branch '$CURRENT_BRANCH'" >&2
    echo "   This branch may be used for App Store releases." >&2
    echo "   Ensure all tests pass and release checklist is complete." >&2
fi

exit 0

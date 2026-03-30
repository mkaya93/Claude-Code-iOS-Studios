#!/bin/bash
# SubagentStart hook: Audit trail of agent invocations

LOG_DIR="production/session-logs"
mkdir -p "$LOG_DIR" 2>/dev/null

INPUT=$(cat)
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

if command -v jq >/dev/null 2>&1; then
    AGENT_NAME=$(echo "$INPUT" | jq -r '.agent_name // "unknown"')
else
    AGENT_NAME=$(echo "$INPUT" | grep -oE '"agent_name"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/"agent_name"[[:space:]]*:[[:space:]]*"//;s/"$//')
    [ -z "$AGENT_NAME" ] && AGENT_NAME="unknown"
fi

echo "$TIMESTAMP | $AGENT_NAME" >> "$LOG_DIR/agent-audit.log" 2>/dev/null

exit 0

#!/bin/bash
# Hook: detect-gaps.sh — Detect missing documentation gaps

set +e

echo "=== Checking for Documentation Gaps ==="

FRESH_PROJECT=true

if [ -f ".claude/docs/technical-preferences.md" ]; then
  PLATFORM_LINE=$(grep -E "^\- \*\*Platform\*\*:" .claude/docs/technical-preferences.md 2>/dev/null)
  if [ -n "$PLATFORM_LINE" ] && ! echo "$PLATFORM_LINE" | grep -q "TO BE CONFIGURED" 2>/dev/null; then
    FRESH_PROJECT=false
  fi
fi

if [ -f "design/prd/app-concept.md" ]; then
  FRESH_PROJECT=false
fi

if [ -d "src" ]; then
  SRC_CHECK=$(find src -type f \( -name "*.swift" -o -name "*.m" -o -name "*.mm" -o -name "*.metal" \) 2>/dev/null | head -1)
  if [ -n "$SRC_CHECK" ]; then
    FRESH_PROJECT=false
  fi
fi

if [ "$FRESH_PROJECT" = true ]; then
  echo ""
  echo "🚀 NEW PROJECT: No platform configured, no app concept, no Swift source code."
  echo "   This looks like a fresh start! Run: /start"
  echo ""
  echo "💡 To get a comprehensive project analysis, run: /project-stage-detect"
  echo "==================================="
  exit 0
fi

if [ -d "src" ]; then
  SRC_FILES=$(find src -type f \( -name "*.swift" -o -name "*.m" -o -name "*.mm" -o -name "*.metal" \) 2>/dev/null | wc -l)
else
  SRC_FILES=0
fi

if [ -d "design/prd" ]; then
  DESIGN_FILES=$(find design/prd -type f -name "*.md" 2>/dev/null | wc -l)
else
  DESIGN_FILES=0
fi

SRC_FILES=$(echo "$SRC_FILES" | tr -d ' ')
DESIGN_FILES=$(echo "$DESIGN_FILES" | tr -d ' ')

if [ "$SRC_FILES" -gt 30 ] && [ "$DESIGN_FILES" -lt 3 ]; then
  echo "⚠️  GAP: Substantial codebase ($SRC_FILES Swift files) but sparse PRDs ($DESIGN_FILES files)"
  echo "    Suggested action: /reverse-document design src/features/[feature]"
fi

if [ -d "prototypes" ]; then
  PROTOTYPE_DIRS=$(find prototypes -mindepth 1 -maxdepth 1 -type d 2>/dev/null)
  UNDOCUMENTED_PROTOS=()

  if [ -n "$PROTOTYPE_DIRS" ]; then
    while IFS= read -r proto_dir; do
      proto_dir=$(echo "$proto_dir" | sed 's|\\|/|g')
      if [ ! -f "${proto_dir}/README.md" ] && [ ! -f "${proto_dir}/CONCEPT.md" ]; then
        proto_name=$(basename "$proto_dir")
        UNDOCUMENTED_PROTOS+=("$proto_name")
      fi
    done <<< "$PROTOTYPE_DIRS"

    if [ ${#UNDOCUMENTED_PROTOS[@]} -gt 0 ]; then
      echo "⚠️  GAP: ${#UNDOCUMENTED_PROTOS[@]} undocumented prototype(s) found:"
      for proto in "${UNDOCUMENTED_PROTOS[@]}"; do
        echo "    - prototypes/$proto/ (no README)"
      done
    fi
  fi
fi

if [ -d "src/app" ] || [ -d "src/features" ]; then
  if [ ! -d "docs/architecture" ]; then
    echo "⚠️  GAP: Source code exists but no docs/architecture/ directory"
    echo "    Suggested action: /architecture-decision"
  fi
fi

if [ "$SRC_FILES" -gt 50 ]; then
  if [ ! -d "production/sprints" ] || [ -z "$(ls -A production/sprints 2>/dev/null)" ]; then
    echo "⚠️  GAP: Substantial codebase ($SRC_FILES Swift files) but no sprint plans"
    echo "    Suggested action: /sprint-plan new"
  fi
fi

echo ""
echo "💡 To get a comprehensive project analysis, run: /project-stage-detect"
echo "==================================="

exit 0

#!/usr/bin/env bash
set -euo pipefail

REPO_RAW_URL="${AIFBR_AGENT_SKILLS_RAW_URL:-https://raw.githubusercontent.com/aifbr/agent-skills/main}"
DEFAULT_TARGET="${AIFBR_SKILLS_HOME:-$HOME/.codex/skills}"
SKILLS=(
  prd-creator
  to-prd
  to-issues
  grill-me-with-docs
  humanizer
  diagnose
)

target="$DEFAULT_TARGET"
declare -a requested=()

usage() {
  cat <<'USAGE'
Usage:
  install.sh <skill...> [--target DIR]
  install.sh --all [--target DIR]
  install.sh --list
USAGE
}

has_skill() {
  local skill="$1"
  for known in "${SKILLS[@]}"; do
    [[ "$known" == "$skill" ]] && return 0
  done
  return 1
}

parse_args() {
  while [[ $# -gt 0 ]]; do
    case "$1" in
      --all)
        requested=("${SKILLS[@]}")
        shift
        ;;
      --list)
        printf '%s\n' "${SKILLS[@]}"
        exit 0
        ;;
      --target)
        target="${2:?Missing target directory}"
        shift 2
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        requested+=("$1")
        shift
        ;;
    esac
  done
}

download_skill() {
  local skill="$1"
  local destination="$target/$skill"

  if ! has_skill "$skill"; then
    echo "Unknown skill: $skill" >&2
    exit 1
  fi

  mkdir -p "$destination"

  if [[ -f "skills/$skill/SKILL.md" ]]; then
    cp "skills/$skill/SKILL.md" "$destination/SKILL.md"
  else
    curl -fsSL "$REPO_RAW_URL/skills/$skill/SKILL.md" -o "$destination/SKILL.md"
  fi

  echo "Installed $skill -> $destination"
}

main() {
  parse_args "$@"

  if [[ ${#requested[@]} -eq 0 ]]; then
    usage
    exit 1
  fi

  mkdir -p "$target"

  for skill in "${requested[@]}"; do
    download_skill "$skill"
  done
}

main "$@"

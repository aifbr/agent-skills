---
name: to-prd
description: Turn settled conversation context into a concise PRD without interviewing. Use when the context is already clear and the user wants it captured as a product requirements document.
credits:
  - name: Matt Pocock Skills
    role: Conceptual base.
    url: https://github.com/mattpocock/skills
  - name: AIFBR
    role: Public adaptation and installer packaging.
---

# To PRD

Synthesize existing context into a PRD.

## Rules

- Do not interview unless a blocker prevents useful synthesis.
- Preserve decisions already made.
- Do not invent requirements.
- Mark assumptions clearly.
- List unresolved questions at the end.

## Output

```md
# PRD: <name>

## Problem
## Solution
## Users
## Scope
## Out of scope
## Acceptance criteria
## Dependencies
## Open questions
```

## Credits

- Matt Pocock Skills: conceptual base. https://github.com/mattpocock/skills
- AIFBR: public adaptation and installer packaging.

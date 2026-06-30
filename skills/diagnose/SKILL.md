---
name: diagnose
description: Diagnose bugs and regressions with a reproducible feedback loop before changing code.
credits:
  - name: Matt Pocock Skills
    role: Conceptual base for the diagnosis flow.
    url: https://github.com/mattpocock/skills
  - name: AIFBR
    role: Public adaptation and installer packaging.
---

# Diagnose

Do not jump to the fix before the failure is observable.

## Flow

1. Reproduce.
2. Minimize.
3. Form hypotheses.
4. Instrument the right point.
5. Fix the smallest cause.
6. Add regression validation.

## Quality bar

The fix is ready only when a check that failed before now passes.

## Credits

- Matt Pocock Skills: conceptual base for the diagnosis flow. https://github.com/mattpocock/skills
- AIFBR: public adaptation and installer packaging.

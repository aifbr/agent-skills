---
name: diagnose
description: Diagnose bugs and regressions with a reproducible feedback loop before changing code.
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

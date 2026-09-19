---
name: design-testing
description: Verify design intent and implementation quality through UX critique, heuristic review, accessibility/WCAG 2.2 checks, responsive/visual QA, interaction/state testing and evidence-based validation. Use after meaningful design/implementation changes or when explicitly auditing an existing interface.
---
# Design Testing

Verification is adaptive: test what can fail in this task. Do not run a ceremonial full audit for a trivial change.

## Two reviews
1. **Intent review** — did the result solve the stated user/business/design problem without violating scope?
2. **Quality review** — is the solution structurally, visually, interactively, accessibly and technically sound?

## When implementation exists
Inspect the rendered result, not only source code. Exercise relevant desktop/tablet/narrow widths, keyboard/focus, loading/empty/error/overflow states and interaction behavior. Use automated checks (e.g. accessibility/Lighthouse/browser tests) as evidence, not as proof that UX is good.

## Accessibility
Target WCAG 2.2 AA where applicable. Use WAI/APG for common widget semantics and keyboard patterns. Distinguish WCAG success criteria from supplemental guidance and from design recommendations. Prefer native semantics before ARIA.

## Heuristics and psychology
Use Nielsen/Laws of UX to diagnose concrete problems. Do not generate a long checklist disconnected from the task.

## Completion rule
Do not claim done without evidence appropriate to the task. Report what was checked, failures fixed, remaining uncertainty and any validation that requires real users/production data.

# Compatibility & Override Policy

Design Superpowers is designed to coexist with mature skill installations. Compatibility is resolved by **role**, not by skill name alone.

## Runtime classes

Every design-adjacent installed skill should be classified as exactly one primary runtime class:

| Class | May claim a generic user design request? | Purpose |
|---|---:|---|
| ENTRY | Yes | Broad design triage. Exactly one: `design-director`. |
| SPECIALIST | No | Answers one narrow design question after triage or explicit expert invocation. |
| REFERENCE | No | Knowledge loaded by another role; never competes in discovery. |
| IMPLEMENTATION | Only for explicit implementation intent | Executes an already-decided design in a technical stack/tool. |
| VERIFICATION | Only for explicit audit/verification intent or an exit gate | Tests the result; does not redesign by default. |
| DISABLED/REPLACED | No | Duplicate or legacy broad role whose useful knowledge has been absorbed elsewhere. |

## Priority contract

For a generic design request:

1. Persistent project/host invariants.
2. `design-director`.
3. Specialist selected by the Director.
4. Focused references and existing project design system.
5. Technical implementation skill when implementation is required.
6. Adaptive verification.

A lower layer must not independently broaden or steal work already owned by a higher layer.

Explicit user intent may enter later in the chain. Example: "implement the approved drawer animation in React" may invoke an implementation skill directly because the design decision is already made.

## Collision decision tree

For every installed design-adjacent skill:

1. **Does it broadly claim UI/UX/design requests?**
   - Yes and it is not Director → NARROW, REFERENCE, or DISABLE.
2. **Does it answer the same narrow question as an existing specialist?**
   - Keep the stronger implementation; make the other a REFERENCE or DISABLE it.
3. **Does it execute a technical decision rather than make the design decision?**
   - Keep as IMPLEMENTATION and narrow metadata to implementation intent.
4. **Does it verify rather than create?**
   - Keep as VERIFICATION and distinguish change-level verification from finished-product audit.
5. **Does it contain unique knowledge but have an unsafe broad trigger?**
   - Preserve the knowledge as a reference; remove it from generic discovery.

## Known compatibility decisions from the audited personal environment

These are role decisions, not destructive edits to third-party packages.

| Existing skill | Class / action | Boundary |
|---|---|---|
| `ux-designer` | NARROW or REPLACE | Must not claim every human-facing interface. Structural, psychology, accessibility and visual concerns belong to their owned roles/invariants. |
| `refactoring-ui` | REFERENCE | Fold useful visual-refinement knowledge under the visual execution specialist; no generic entry trigger. |
| `ui-ux-pro-max` | REFERENCE / DISABLE generic routing | Broad toolbox overlaps multiple roles; harvest focused knowledge rather than expose as a competing entry point. |
| `design-intelligence` | SPECIALIST | Diagnostic: explain a specific perceptual/cognitive/behavioral mechanism; not mandatory first step. |
| `contradiction-first-loop` | SPECIALIST | Only when two required outcomes materially conflict and ordinary optimization cannot satisfy both. |
| `frontend-design` | SPECIALIST or REFERENCE under Art Direction | Distinctive visual direction; must not bypass Director for routine UI work. |
| `frontend-ui-animator` | IMPLEMENTATION | Implements purposeful UI animation in the technical stack after motion/design intent is known, unless user explicitly asks only for implementation. |
| `verify-design-change` | VERIFICATION | Change-level verification while making a visual change. |
| `wcag-audit-patterns` | VERIFICATION | Finished-site/deep accessibility audit; accessibility itself remains an always-on invariant. |

Items whose exact current metadata has not been inspected must remain provisional until verified.

## Upgrade rule

Never edit a third-party marketplace checkout merely to make Design Superpowers work. Prefer a host/profile override, disable the competing skill, or install a narrowed local replacement. This keeps upstream packages upgradeable.

## Success condition

The compatibility layer is successful when generic design prompts have one broad entry, explicit technical/audit prompts can enter the correct later layer, specialists do not compete for unrelated work, and disabling Design Superpowers does not corrupt third-party packages.

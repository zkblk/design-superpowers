---
name: interaction-patterns
description: Internal UI-pattern specialist used after Design Director identifies concrete interaction/component patterns. Owns behavior contracts for recurring controls, forms, search/filtering, tables, KPI, navigation, overlays, states and data visualization. Not a broad UX, visual-design or product-strategy entry point.
---
# Interaction Patterns

Answer: **How should these known UI patterns behave?**

## Retrieval
1. Inspect the actual task/interface/data.
2. Identify only concrete patterns present or required.
3. Read `references/INDEX.md`.
4. Load only the matching rule cards. A composite surface may load several cards without invoking several agents.
5. If data visualization is involved, start with `data-viz/choose-chart.md` before a chart-specific card.
6. Apply project components/design-system behavior first when intentional, accessible and compatible with invariants.

Do not load the whole library. Do not invent missing UI/data merely because a card exists.

Rule strength: **MUST** is invariant/semantic/accessibility/data-integrity; **DEFAULT** is a strong default; **CONTEXTUAL** requires task evidence; **AVOID** is a recurrent failure mode, not an absolute ban.

For a pattern define only what matters: when/when-not, anatomy, content hierarchy, states, keyboard/pointer behavior, focus/dismissal, validation/recovery, loading/empty/error, density/overflow, responsive adaptation, accessibility semantics and verification.

Use project component first. If absent: reuse primitives → compose → extend coherently → create a reusable component only when justified.

Return a bounded behavior contract to the Director/implementer.
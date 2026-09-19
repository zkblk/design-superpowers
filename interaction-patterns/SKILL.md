---
name: interaction-patterns
description: Internal UI-pattern specialist used after Design Director identifies a concrete interaction/component pattern. Owns behavior contracts for KPI cards, tables, forms, validation, dialogs, drawers, comboboxes, date pickers, search, filters, loading, feedback, overlays and uploads. Not a broad UX, visual-design or product-strategy entry point.
---
# Interaction Patterns

Answer: **How should this known UI pattern behave?**

Load only the relevant file from `references/`. Do not invent behavior from visual appearance and do not load the entire pattern library.

For a pattern define as applicable: when/when-not; anatomy; content hierarchy; states; keyboard/pointer behavior; focus; dismissal; validation; recovery; loading/empty; overflow/density; responsive adaptation; accessibility semantics; motion purpose; design-system mapping; common failures; verification.

Use project component first. If absent: reuse primitives → compose → extend coherently → create a reusable component only when justified. Project behavior overrides generic defaults when intentional and accessible.

Run relevant extremes: empty, minimal, normal, dense/overflow, long content, loading, error, warning, disabled/read-only, narrow viewport and reduced motion. Return the behavior contract to the Director/implementer.

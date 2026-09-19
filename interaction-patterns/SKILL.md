---
name: interaction-patterns
description: Select and specify established UI interaction patterns and component behavior such as KPI cards, tables, forms, validation, dialogs, drawers, comboboxes, date pickers, search, filters, loading, errors and navigation controls. Use when the task is component/pattern-level or after IA determines what interaction is needed.
---
# Interaction Patterns

First ask: **which pattern best solves the interaction problem?** Then load only that pattern's reference. Do not invent behavior from visual appearance.

For any pattern define as applicable: when/when-not; anatomy; content hierarchy; states; keyboard/pointer behavior; focus; dismissal; validation; error recovery; loading/empty; overflow/density; responsive adaptation; accessibility semantics; motion purpose; design-system mapping; common failure modes; verification.

Use project component first. If absent: reuse primitives → compose → extend coherently → create a reusable component only when justified. Project behavior overrides generic defaults when it is intentional and accessible.

Run relevant extremes: empty, minimal, normal, dense/overflow, long content, loading, error, warning, disabled/read-only, narrow viewport, reduced motion.

See focused references. Grow references instead of creating a new top-level skill for every component.

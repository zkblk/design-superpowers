---
name: design-system
description: Internal system-level specialist used when Design Director identifies a reusable design-system decision. Owns foundations, semantic tokens, component contracts, themes, responsive rules and governance. Not for one-off screen styling, general UI polish or product/UX strategy.
---
# Design System

Answer: **What belongs in the reusable system, tokens or component contract?**

If a system exists, inspect and use it: CSS/theme variables, token files, component library, Storybook, typography, icons, breakpoints and patterns. Never create a parallel system casually.

Composition order: **reuse → compose → extend → create**. Do not introduce arbitrary values when an appropriate token/style/component exists.

Layers: foundations/primitives → semantic tokens → component tokens where needed → primitives/components → patterns/modules → product UI. Prefer semantic roles over values encoded in names.

Cover only relevant system dimensions: color, typography, spacing, grid/layout, radius, border, elevation/layers, iconography, motion, breakpoints/containers, themes and component states. Accessibility and responsive behavior belong in contracts.

Document why/when/behavior, not only visual specs. New system additions need states, responsive behavior, accessibility, examples and migration/usage notes proportionate to importance.

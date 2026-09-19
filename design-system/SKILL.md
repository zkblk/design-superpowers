---
name: design-system
description: Inspect, create, extend and govern scalable design systems: foundations, semantic tokens, component contracts, responsive rules, themes, iconography, motion and documentation. Use when a project lacks a coherent system or when a reusable system-level addition/change is needed.
---
# Design System

## Source-of-truth rule
If a system exists, use it. Inspect CSS/theme variables, token files, component library, Storybook, typography, icons, breakpoints and patterns. Never create a parallel system casually.

## Composition order
**reuse → compose → extend → create**.
Do not introduce arbitrary values when an appropriate token/style/component exists. If a reusable need is genuinely missing, extend the system intentionally rather than patching one screen.

## Layers
Foundations/primitives → semantic tokens → component tokens where needed → primitives/components → patterns/modules → product UI.
Prefer semantic roles (`text.primary`, `surface.warning`, `space.section`) over values encoded in names.

Cover color, typography, spacing, grid/layout, radius, border, elevation/layers, iconography, motion, breakpoints/containers, themes and component states. Accessibility requirements belong in component contracts. Responsive behavior belongs in component/pattern contracts.

Document why/when/behavior, not only visual specs. New system additions need states, responsive behavior, accessibility, examples and migration/usage notes proportionate to their importance.

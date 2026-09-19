---
name: interaction-ia
description: Design and repair information architecture, navigation, object models, task flows, search/filter structures, permissions and complex B2B interaction structure. Use when the problem is structural rather than primarily visual.
---
# Interaction & Information Architecture

Reason in this order when relevant: **mental model → objects → tasks → relationships → taxonomy → hierarchy → navigation → labels → search/filter → orientation → validation**.

Prefer domain objects and user tasks over generic buckets. Distinguish global, local, contextual and utility navigation. Consider role, scope/tenant, permissions, status/workflow, temporal/spatial structure and cross-object relationships.

For existing products, decompose the current artifact first: roles, business rules, objects, data, actions, states, relationships, permissions and constraints. Separate required business logic from accidental UI. Reconstruct rather than redesign from scratch unless explicitly requested.

Validate the structural risk with the cheapest appropriate method: card sorting for taxonomy, tree testing for hierarchy/findability, first-click for initial routing, task testing for flow behavior.

Always preserve accessibility, responsive behavior and the project design system; those are invariants, not later stages.

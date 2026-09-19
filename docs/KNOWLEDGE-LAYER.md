# Knowledge Layer

Design Superpowers separates four things that are often mixed together:

1. **Invariants** — non-negotiable constraints: scope, data integrity, accessibility, project system.
2. **Rule cards** — compact defaults for recurring UI and data-visualization decisions.
3. **Precedents** — examples used for inspiration, not authority.
4. **Project memory** — local decisions learned from evidence in the current product.

## Retrieval rule

Do not load the library. Detect the concrete patterns in the task and load only the relevant cards.

Example: an invoice list with search, date range, status filters and a table loads `search.md`, `date-picker.md`, `filters.md`, and `table.md`. It does not invoke four agents.

## Strength labels

- **MUST** — invariant, accessibility, semantic, safety, or data-integrity requirement.
- **DEFAULT** — robust default; deviate when project/user evidence gives a reason.
- **CONTEXTUAL** — depends materially on task, data, users, platform or domain.
- **AVOID** — recurrent failure mode; use only with a defensible reason.

Project-specific intentional behavior may override DEFAULT/CONTEXTUAL guidance. It may not silently override MUST constraints.

## Authority order

1. Product/domain requirements and measured user evidence.
2. Platform semantics and accessibility standards (WCAG/WAI-ARIA/native HTML).
3. Mature public design systems with explicit usage/accessibility guidance (GOV.UK, Primer, Carbon, Spectrum, Material/Atlassian where useful).
4. Established usability/data-visualization research and books.
5. Curated precedents and galleries.
6. Social-media tips and aesthetic recipes.

Lower-authority material cannot turn a heuristic into a law.

## Precedent rule

Use precedents only when the solution space is genuinely open. Inspect several, extract recurring structure, then adapt to the project's design system. Never copy a precedent merely because it looks polished.

## Maintenance

A new card is justified by repeated production need, a production failure, or a genuinely distinct interaction question. Do not create cards to make the library look complete.

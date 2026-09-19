# Design Superpowers

**A design capability layer for AI coding agents.**

AI agents can write interface code very quickly. That does not mean they make good design decisions.

Ask an agent to improve a dashboard and it may redesign too much. Ask it to fix a KPI card and it may invent data that does not exist. Ask for a cleaner interface and you can get another pile of rounded cards, gradients, pills and arbitrary spacing. The code works. The design still feels wrong.

Design Superpowers gives the agent one design entry point and a team of focused specialists behind it.

## The important idea

Skill routing is part of the design.

If every UX/UI skill advertises itself as “use me for design,” they compete before an orchestrator can coordinate them. Design Superpowers therefore uses four layers:

**L0: invariants** — rules that should always hold, such as preserving scope, using the existing design system, not inventing data, accessibility and responsive behavior.

**L1: Design Director** — the only intentionally broad design entry skill. It decides how much process the task needs.

**L2: specialists** — narrow roles with non-overlapping questions.

**L3: references** — detailed pattern/domain knowledge loaded only when needed.

This keeps a small task small.

## What changes

```
"Improve this KPI card"
→ Design Director: Quick
→ Interaction Patterns
→ KPI reference
→ inspect what data actually exists
→ reuse the existing design system
→ visual craft only if needed
→ implement
→ verify
```

No invented `+12.4%`. No persona workshop. No five specialists fighting to own the same request.

## The design team

| Skill | One question it owns |
| --- | --- |
| `design-director` | What design work is needed, and how deep should we go? |
| `product-ux-strategy` | Are we solving the right problem, and what evidence/uncertainty matters? |
| `interaction-ia` | How should objects, tasks, hierarchy, navigation and flows be structured? |
| `interaction-patterns` | How should this known UI pattern behave? |
| `design-intelligence` | What perceptual/cognitive/behavioral mechanism may explain the issue? |
| `ui-craft` | How should an already-defined solution be visually composed/refined? |
| `art-direction` | What coherent visual point of view should this surface express? |
| `design-system` | What belongs in reusable tokens/components/system contracts? |
| `design-testing` | Does the result satisfy intent and relevant quality constraints? |

See `ROUTING-MAP.md` for boundaries and collision policy.

## Smallest sufficient process

The Director triages:

**Quick** — a concrete component, interaction or visual fix. Go straight to the relevant specialist/reference, implement and verify.

**Standard** — a module, flow, navigation change or redesign with some uncertainty. Inspect and frame briefly before solving.

**Deep** — the problem itself is unclear, high-impact or evidence-poor. Use discovery/strategy before solution work.

> Never expand the scope of a well-defined task merely because more design methods are available.

## Existing product first

Before substantial work, Design Superpowers looks for existing sources of truth: project instructions, product docs, tokens, CSS/theme variables, components, Storybook, fonts, icons, breakpoints, tests, research and project-specific design rules.

The construction rule is:

**reuse → compose → extend → create**

Design Superpowers does not replace your design system. It makes the agent use it.

## Knowledge Layer v1

Design Superpowers now includes a bounded professional knowledge layer rather than relying on the model to remember every UI convention from scratch.

Knowledge is separated into:
- **invariants** — non-negotiable scope, data-integrity, accessibility and system constraints
- **rule cards** — compact MUST / DEFAULT / CONTEXTUAL / AVOID guidance
- **precedents** — inspiration, never authority
- **project memory** — evidence-backed local decisions

Authority is intentionally ordered: project/domain evidence → standards/native semantics → mature design systems → established research/books → precedent galleries → social-media tips. See `docs/KNOWLEDGE-LAYER.md` and `docs/KNOWLEDGE-SOURCES.md`.

## Pattern knowledge without prompt bloat

A table, date picker and KPI card need different reasoning. Pattern details live under `interaction-patterns/references/` and are loaded only when relevant.

The V1 interaction core covers buttons/icons, inputs, validation, comboboxes, date pickers, search, filters, tables/data grids, pagination, KPI cards, navigation, dialogs, empty/loading/error states and a data-visualization decision layer.

Data visualization starts from the analytical question and data shape, then routes to comparison/trend/distribution/correlation/part-to-whole guidance. It explicitly allows **no chart** when a KPI, table or text answers the question better.

`ui-craft/references/` adds focused foundations for spacing, visual hierarchy, typography, alignment/grid, density and responsive composition. Project tokens and components override generic numeric recipes.

## Portable, but collision-aware

The repository is self-contained for a clean installation. That does **not** mean every bundled specialist should be duplicated into an account that already has a stronger equivalent.

Installation should resolve:
- same-name skills
- different names that own the same role
- legacy broad auto-trigger descriptions that would compete with Director

For example, an existing richer `design-intelligence` can remain the implementation of that L2 role while the bundled copy is skipped.

## Always-on rules

Some requirements should exist before routing. Host adapters can place the L0 invariants in persistent project instructions/rules:

- preserve scope and business logic
- never invent product data/functionality
- existing design system first
- accessibility by construction
- responsive behavior by construction
- evidence is not hypothesis
- rendered verification when implementation exists

For Claude-oriented setups, see `claude/INVARIANTS.md`.

## Evidence-gated learning

Design Superpowers can learn without silently corrupting its own rules. Production failures and repeated evidence can create project-local decisions and regression cases. A canonical rule changes only when it survives near-neighbor, boundary, opposite/control and existing regression cases.

The agent may not promote its own implementation preference into a `MUST`. See `docs/LEARNING-LOOP.md`.

The knowledge-layer regression suite lives in `evals/KNOWLEDGE-LAYER-V1.md`; routing regression lives in `evals/ROUTING-REGRESSION-V1.md`.

## Current status

**V1 is ready for pilot use.** The architecture, collision policy, focused knowledge retrieval, core interaction/data-viz cards, UI-craft foundations, learning guardrails and regression suites are in the canonical repository. The library is intentionally not declared “complete”: new cards should be added from repeated production need or verified gaps, not to maximize component count.

## Project memory

The optional `.design/` project brain stores design knowledge that is expensive to lose: project context, confirmed rules, decisions and visual profile. It supplements the project's real sources of truth.

Git records **what changed**. Project memory can preserve **why**.

## Use

Once installed, work normally:

```
Improve this KPI card.
```

```
This drawer feels wrong. Fix the UX and UI without changing the functionality.
```

```
Redesign this navigation using the components and tokens already in the project.
```

```
This page works but looks generic. Give it a stronger visual direction without breaking the product design system.
```

The user should not have to choose a specialist for ordinary work. The Director is the entry point.

## Installation

Read `INSTALL.md` before adding the package to an account that already contains design skills. For Claude Code, use `claude/CLAUDE-BOOTSTRAP.md`; for always-on Claude project rules, use `claude/INVARIANTS.md`.

## Why this exists

The bottleneck is increasingly not whether an agent can write the component. It is whether it knows what should be built, what should stay untouched, which expertise is relevant, what the existing system already provides, and how to tell whether the result is actually good.

Design Superpowers puts that judgment closer to the work.

Not more process. Better routing, better decisions, better verification.

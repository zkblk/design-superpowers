# Design Superpowers

**A design capability layer for AI coding agents.**

AI agents can write interface code very quickly. That does not mean they make good design decisions.

Ask an agent to improve a dashboard and it may redesign too much. Ask it to fix a KPI card and it may invent data that does not exist. Ask for a cleaner interface and you can get another pile of rounded cards, gradients, pills and arbitrary spacing. The code works. The design still feels wrong.

Design Superpowers gives coding agents a design team to think with.

It adds an adaptive Design Director, focused specialist skills, interaction-pattern knowledge, design-system discipline, accessibility, responsive reasoning, visual craft, art direction and verification. The goal is not to run a giant UX process. The goal is to use the **smallest amount of design process needed to make a good decision**.

## What changes

Without Design Superpowers:

```
"Improve this KPI card"
→ redesign
→ invent a trend
→ add a badge
→ change spacing
→ maybe break the existing system
```

With Design Superpowers:

```
"Improve this KPI card"
→ identify a component-level task
→ load the KPI pattern
→ inspect what data actually exists
→ reuse the existing design system
→ apply hierarchy, spacing and composition
→ check responsive behavior and accessibility
→ render, inspect, fix, verify
```

If comparison data does not exist, it does not invent `+12.4%`.
If the existing component already solves the problem, it reuses it.
If the task is obvious, it does not stop to create personas.

## Who it is for

Design Superpowers is for designers, design engineers, frontend developers and product teams using coding agents such as Claude Code or Codex to create and improve real product interfaces.

It is especially useful when you want an agent to work inside an existing product rather than generate another isolated demo.

## The operating model

A persistent **Design Director** routes each task to the minimum sufficient expertise.

**Quick** tasks go straight to the relevant specialist. A KPI card, drawer, table or visual cleanup should not trigger a research project.

**Standard** tasks such as a module, flow, navigation change or redesign get a short inspection and framing pass before execution.

**Deep** tasks use discovery and product strategy only when the problem is genuinely unclear, high impact or evidence poor.

The prime directive is simple:

> Never expand the scope of a well-defined task merely because more design methods are available.

## The design team

| Skill | What it handles |
| --- | --- |
| `design-director` | Triage, routing, scope, context and coordination |
| `product-ux-strategy` | Problem framing, discovery, JTBD and research decisions |
| `interaction-ia` | Information architecture, navigation, flows and object models |
| `interaction-patterns` | KPI cards, tables, forms, drawers, dialogs, filters and other UI patterns |
| `design-intelligence` | Perception, cognition, mental models and behavioral hypotheses |
| `ui-craft` | Hierarchy, spacing, typography, composition, color and responsive visual craft |
| `art-direction` | Visual direction, taste, anti-generic critique and motion character |
| `design-system` | Tokens, components, foundations and system governance |
| `design-testing` | Intent review, accessibility, responsive QA and rendered verification |

The specialists are not a linear process. The Director chooses what is relevant.

## A few rules are always on

- preserve explicit scope and business logic
- never invent product data, functionality or requirements
- use the existing design system first
- follow **reuse → compose → extend → create**
- design responsive behavior at creation time
- build accessibility in, targeting WCAG 2.2 AA where applicable
- distinguish evidence from assumptions
- inspect the rendered result when implementation exists

## Pattern knowledge without prompt bloat

A table, date picker and KPI card need different reasoning. Design Superpowers uses progressive disclosure: the top-level skill decides what knowledge is needed, then loads a focused reference only when relevant.

The interaction library includes KPI cards, tables, dialogs and drawers, comboboxes, date pickers, forms and validation, search and filters, feedback and loading, popovers/tooltips/menus, and upload patterns.

## Existing product first

Before substantial work, the Director looks for existing sources of truth: documentation, tokens, CSS/theme variables, components, Storybook, fonts, icons, breakpoints, tests, research and project-specific design rules.

Design Superpowers does not replace your design system. It makes the agent actually use it.

## Project memory

The optional `.design/` project brain stores design knowledge that is expensive to lose:

```
.design/
  project.md
  rules.md
  decisions.md
  visual-profile.md
```

Git records **what changed**. Project memory can preserve **why**.

## Install

For Claude Code repository use, install skill folders under `.claude/skills/`. This repository includes `claude/CLAUDE-BOOTSTRAP.md` and `claude/install-claude.sh`.

For Codex personal global use, install under `~/.agents/skills/`. For a repository or team, use `.agents/skills/`.

See `INSTALL.md` for full installation notes.

## How to use it

Once installed, work normally. You do not need a giant design prompt.

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
Build this dashboard and verify it at desktop and narrow widths.
```

```
This page works but looks generic. Give it a stronger visual direction without breaking the product design system.
```

For an obvious narrow task, a specialist can be invoked directly. For ambiguous or multi-stage work, use `design-director` as the entry point.

## Why this exists

Coding agents are becoming implementation teams. The bottleneck is increasingly not whether an agent can write the component.

It is whether it knows **what should be built, what should stay untouched, which pattern fits, what the existing system already provides, when a design heuristic applies, and how to tell whether the result is actually good**.

Design Superpowers puts that judgment closer to the work.

Not more process.

Better decisions, at the moment they are needed.

## Status

This is an evolving design-agent system. See `ARCHITECTURE.md` for the system model, `SOURCE-MAP.md` for provenance and influences, and `docs/CASE-STUDY.md` for the thinking behind the project.

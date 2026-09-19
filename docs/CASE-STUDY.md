# Design Superpowers: from prompt-heavy design work to an adaptive AI design team

## The starting problem
AI coding agents can produce UI quickly, but speed does not automatically create good product design. A recurring failure was that the designer had to repeatedly explain the same professional expectations: how a drawer should behave, what a data table needs, how a date picker handles states, why a dashboard needs hierarchy, why accessibility is part of construction, why existing tokens should be reused, and why a small component fix should not trigger a full discovery workshop.

The problem was not a lack of prompts. It was a lack of a reusable design operating system.

## The question we asked
Could we give an AI agent something closer to a professional design organization: a director who understands the task, specialists who know particular disciplines, a pattern library for detailed component behavior, project memory, and independent verification — while keeping the workflow lightweight for small tasks?

## What we learned from software-agent workflows
Software development already uses many of the mechanisms we needed: routing work to specialists, loading only relevant context, separating implementation from review, preserving repository-level instructions, running tests before declaring completion, and recording durable project knowledge. We adapted those ideas to design rather than inventing a rigid “AI UX process.”

The central rule became: **use the smallest sufficient process**.

A request such as “improve this KPI card” should go directly to component-pattern knowledge, the existing design system and verification. A request such as “we do not understand why this workflow fails” may need problem framing, research or IA before any visual solution is produced.

## The architecture
We created one persistent coordinator — `design-director` — and narrow specialists for product/UX strategy, interaction architecture, interaction patterns, design intelligence, UI craft, design systems, testing, and later art direction.

The Director does not try to know everything at once. It triages the task as Quick, Standard or Deep and invokes the minimum useful expertise. Delegated work uses a Task Contract containing the objective, scope boundaries, project rules, evidence and acceptance criteria. Specialists return a Result Contract with the decision, rationale, assumptions and verification status.

This keeps the main context clean and makes specialist work replaceable: the same conceptual system can be hosted by different capable agents rather than being tied to one giant prompt.

## From Atomic Design to an AI pattern library
A second insight came from mature design systems. Teams do not rediscover a tooltip, combobox, table or drawer from first principles every time. Those patterns already have anatomy, states, accessibility requirements, interaction rules and known edge cases.

So we rejected the idea of creating hundreds of standalone skills. Instead, `interaction-patterns` acts as a pattern-selection specialist and loads narrow references only when required. A table task can load table knowledge; a date-picker task can load date-picker knowledge. The library can grow to hundreds of references without forcing all of them into every conversation.

The construction hierarchy is:

**Foundations → Tokens → Primitives → Components → Patterns → Modules → Pages/Flows**

And the reuse rule is:

**reuse → compose → extend → create**

Existing project truth always comes first.

## What is always on
Some concerns are too fundamental to become optional workflow steps. Scope and business logic must be preserved unless a change is requested. Existing design-system tokens and components are preferred. Responsive behavior is designed with the component rather than bolted on after desktop. Accessibility is considered during construction and verified afterward. Agents must not invent product data or functionality simply to make a mock-up easier.

This distinction was important: accessibility and responsiveness are invariants; research, personas, workshops, psychology analysis or an art-direction pass are conditional tools.

## Building taste without turning taste into dogma
Correct UI can still feel generic. We therefore researched several public design/taste approaches, including Anthropic's frontend-design guidance, Impeccable, Emil Kowalski's design-engineering skill and the community Design Taste synthesis. Their overlap was significant, so installing all of them would create duplicate triggers and contradictory instructions.

Instead we extracted complementary ideas into a dedicated `art-direction` specialist: establish visual authority, identify the surface mode, define a Creative North Star, use visual dials, create one coherent grammar across typography/color/composition/shape/depth/imagery/motion, challenge generic AI defaults, and run a bounded fresh-eye critique before shipping.

We deliberately removed the idea that one aesthetic is universally tasteful. A dense marine control interface, an accounting dashboard and an expressive campaign page should not share the same visual intensity. The brief and existing product system win.

## Project memory and learning
The system separates universal knowledge from project knowledge. Durable product facts, confirmed design decisions, project conventions, visual rejections and case-study evidence can live in a lightweight `.design/` Project Brain. One-off corrections remain local. Confirmed project conventions are saved. Design-system rules update the source of truth. A repeated violation of a saved rule becomes a regression.

This gives future sessions context without requiring the agent to rediscover the project or fabricate retrospective rationale.

## Verification changed the definition of “done”
A successful build is not automatically a successful design. For implemented work, completion means the intent is satisfied, the rendered result has been inspected, relevant responsive states work, the design system is respected, accessibility and interaction states have been checked, and applicable project rules have not regressed.

For art-direction work, the first pass is explicitly a draft. It receives one fresh-eye critique, one high-leverage refinement batch and a confirmation pass. The loop is bounded so “polish” does not become endless agent activity.

## Why the package is portable
The product is stored as Agent Skills: self-contained directories with `SKILL.md` plus optional references. That structure maps cleanly to both Codex-style and Claude-style skill discovery. The canonical knowledge remains one package; deployment adapters copy it to the host's expected skill directory instead of maintaining divergent prompt versions.

For Claude Code, repository skills can live under `.claude/skills/<skill-name>/`. For Codex, the package can be deployed to its corresponding user or repository skill directory. Project-specific memory remains with the project.

## The result
Design Superpowers is not one giant “UX expert” prompt. It is an adaptive design operating system for agents:

**Director → triage → focused specialist/reference → existing system → implementation → independent verification → durable learning.**

The desired outcome is simple: stop teaching the agent the same design profession on every task. A concrete component request should feel fast. An ambiguous product problem should receive appropriate depth. Existing systems should be respected. New patterns should be created deliberately. And the agent should be able to explain what it changed, why it changed it and what evidence says the work is ready.

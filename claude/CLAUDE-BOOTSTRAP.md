# Design Superpowers — Claude Code Bootstrap

Install and validate Design Superpowers without creating a routing fight with existing skills.

## 1. Inspect before installing
Read `README.md`, `ARCHITECTURE.md`, `ROUTING-MAP.md`, `INSTALL.md`, and only the frontmatter of bundled `*/SKILL.md` files initially.

Inspect this environment for existing project instructions, `.claude/`, skills, `.agents/`, `AGENTS.md`, design docs, Storybook, tokens/themes/components and `.design/`.

## 2. Build a role/collision map
Design Superpowers requires one broad design discovery entry: `design-director`.

For every existing design-related skill record its name, description/trigger, single owned question, whether it broadly auto-triggers on generic design/UI/UX work, and overlap with a bundled L2 role.

Resolve before copy:
- same name → compare; keep one implementation
- same role under different names → choose one primary; reference/skip the other
- broad legacy skill overlapping several design roles → narrow/isolate/exclude it from this profile rather than leaving another broad discovery competitor
- technical implementation skills may coexist when their trigger is genuinely technical

Do not overwrite silently. Bundled specialists are portable fallbacks; a richer existing implementation may be retained.

## 3. Install the routing shape
- L1: install `design-director` as the only broad design entry.
- L2: install only specialist implementations selected by the role map.
- L3: preserve each selected specialist's `references/` beside its `SKILL.md`.
- Do not copy package docs into the skills directory as fake skills.

## 4. Install L0 invariants
Read `claude/INVARIANTS.md`. Merge its rules into the repository's supported persistent project-instruction/rules mechanism without deleting existing instructions or duplicating equivalent rules.

Do not rely on undocumented metadata such as automatic path matching unless verified for the current Claude runtime/version.

## 5. Project memory
Create `.design/` only if the repository lacks an equivalent durable design-knowledge location and the work benefits from it. Seed selectively from `project-template/.design/`; do not generate empty UX artifacts.

## 6. Session and project initialization
On the first meaningful Director invocation, inventory available skills/tools/design sources once for the session and inspect project sources of truth once when needed. Reuse both.

## 7. Validate routing
Check:
1. exactly one profile skill has a broad generic design description: `design-director`
2. every L2 specialist answers a distinct question from `ROUTING-MAP.md`
3. no duplicate skill names
4. no unresolved broad legacy design auto-triggers
5. selected references exist and relative paths work
6. existing project instructions/source-of-truth were preserved
7. L0 invariants are present in persistent project instructions when supported

Routing tests:
- “Improve this KPI card” → Director / Quick → Interaction Patterns / KPI reference; no research
- “Navigation is confusing” → Director → Interaction IA
- “This page works but looks generic” → Director → Art Direction, then UI Craft if needed
- “We don't understand why users abandon this workflow” → Director / Deep → Product UX Strategy

## Required final report
Explain installed L1/L2 roles and locations; existing skills kept/skipped/reframed and why; L0 installation; project/session sources found; `.design/` changes; routing-test results; unresolved conflicts/uncertainty.

Do not claim readiness until routing validation passes.

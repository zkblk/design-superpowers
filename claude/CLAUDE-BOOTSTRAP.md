# Design Superpowers — Claude Code Bootstrap

You are installing and validating the Design Superpowers package for this repository. Do not blindly copy files. Inspect first, preserve existing project instructions, and report exactly what you changed.

## Goal
Make Design Superpowers available to Claude Code at repository scope while preserving the package as a portable Agent Skills source. The design system coordinates design work through `design-director`, narrow specialist skills, focused references and optional `.design/` project memory.

## Installation procedure
1. Locate the supplied `design-superpowers` package root.
2. Read its `README.md`, `ARCHITECTURE.md`, `SOURCE-MAP.md`, and every top-level `*/SKILL.md` frontmatter. Do not preload all reference files.
3. Inspect this repository for existing `CLAUDE.md`, `.claude/`, `.agents/`, `AGENTS.md`, design docs, Storybook, tokens/themes/components and `.design/` knowledge.
4. Detect conflicts by skill `name`. Never overwrite an existing skill silently. If an existing skill is clearly an older Design Superpowers version, compare before replacing; otherwise preserve it and report the conflict.
5. Install each Design Superpowers skill directory one level under `.claude/skills/<skill-name>/`. Keep its `references/` beside `SKILL.md`.
6. Do not copy package docs such as README/ARCHITECTURE into `.claude/skills` as fake skills.
7. Create `.design/` only if the repository lacks an equivalent durable design-knowledge location and design work would benefit from it. Seed from `project-template/.design/`, but remove empty boilerplate that has no current value.
8. If `CLAUDE.md` exists, preserve it. Add only a compact integration note if needed: use `design-director` for ambiguous/multi-stage design work; narrow specialists may be invoked directly for well-defined tasks; existing project instructions and product truth remain authoritative.
9. Validate every installed skill: directory name matches frontmatter `name`; `description` explains when to use it; referenced local files exist; no duplicate skill names; no broken relative paths.
10. Do not modify application source code during installation unless explicitly asked.

## Behavior after installation
- For a new substantial project context, perform Project Init once and reuse what was learned.
- For each task, use Quick / Standard / Deep triage.
- Do not force research onto a concrete component request.
- Prefer `reuse → compose → extend → create`.
- Accessibility, responsive behavior, scope preservation and existing design-system compliance are invariants, not optional late stages.
- Use `art-direction` only when visual direction/taste is materially unresolved; do not invoke it for every routine UI change.

## Required final report
At the end explain, in plain language:
1. What Design Superpowers is and why it exists.
2. Which skills were installed and where.
3. What existing project sources of truth were found and preserved.
4. Whether `.design/` or `CLAUDE.md` was changed, and why.
5. Any conflicts or skipped steps.
6. How a concrete request such as “improve this KPI card” will route now.
7. How a broad request such as “this product flow is wrong” will route now.
8. What was validated and whether the installation is ready.

Do not claim success until the validation in step 9 passes.

# Install / Use

## Codex — global (recommended for personal use)
Copy each top-level skill directory (`design-director`, `product-ux-strategy`, etc.) into:

`~/.agents/skills/`

Codex discovers user-level skills there across repositories. Keep project-specific knowledge in the repository, not in the global skill.

## Codex — repository/team
Copy selected skills into:

`.agents/skills/`

Commit them when the team should share the same workflow. Do not install duplicate skills with the same `name` at user and repo scope unless you intentionally want both visible.

## Project Brain
Copy `project-template/.design/` to the project root only when durable design knowledge is useful. Do not generate empty UX artifacts. Populate it incrementally with confirmed context, rules, decisions, evidence, and case-study material.

## ChatGPT / other skill-compatible surfaces
This package is the canonical skill source. Import/install the skill folders where the surface supports standalone skills. For broad ChatGPT distribution across supported Chat/Work surfaces, package the same skills as a plugin rather than maintaining a separate prompt system.

## Default invocation
Use `design-director` as the entry point for ambiguous/multi-stage design work. For an obvious narrow task, direct invocation of a specialist is valid (for example `interaction-patterns` for a KPI card). The Director must not force a full process around a well-defined task.

## Claude Code — repository install
Use `claude/CLAUDE-BOOTSTRAP.md` as the handoff instruction. It tells Claude Code to inspect the repository first, preserve existing instructions, install each skill one level under `.claude/skills/<skill-name>/`, validate names/references, and explain the final setup.

For a simple non-destructive copy, run `claude/install-claude.sh` from the package; existing skill directories are skipped rather than overwritten. Then ask Claude Code to execute the bootstrap validation.

Keep one canonical Design Superpowers package in version control. Treat `.agents/skills` and `.claude/skills` as deployment targets, not separately edited sources.

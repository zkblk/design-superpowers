# Install / Use

## Important: do not blindly flatten this into an existing skill collection
Design Superpowers assumes **one broad design entry skill**: `design-director`. Before installing into an environment that already has design skills, inspect names and descriptions.

Resolve:
- exact name collisions
- different skills that answer the same L2 question
- legacy descriptions that broadly auto-trigger on any UI/UX/design request

Keep the richer implementation of a role when appropriate. The bundled specialists make this repository self-contained for clean installs; they are fallbacks, not a requirement to duplicate stronger existing skills.

See `ROUTING-MAP.md`.

## Codex
For a clean personal installation, deploy the selected skill directories to the supported user-level skills location. For a repository/team installation, deploy them to the supported repository skills location. Keep project-specific knowledge in the repository.

If an existing environment already has a richer `design-intelligence` or another same-role specialist, do not install a duplicate merely because it is bundled here.

## Project Brain
Copy `project-template/.design/` to the project root only when durable design knowledge is useful. Do not generate empty UX artifacts. Populate it incrementally with confirmed context, rules, decisions, evidence and case-study material.

## Claude Code
Use `claude/CLAUDE-BOOTSTRAP.md` as the installation handoff. It inspects existing skills/instructions before deployment, resolves conflicts and validates the final setup.

Use `claude/INVARIANTS.md` as the source for always-on design rules in the host's persistent project-instruction/rules mechanism. Do not assume an undocumented metadata field is portable across hosts; host-specific automatic-loading features must be verified against that host/version before relying on them.

`claude/install-claude.sh` remains a simple non-destructive copier for **clean installations**. It skips same-name conflicts but does not semantically resolve differently named overlapping skills. For a mature account with many existing skills, use the bootstrap inspection instead of blind copy.

## Plugin distribution
Plugin packaging is preferred when the target surface preserves the complete skill package, including reference files and adapter resources. Do not assume that every “install skill” UI preserves supporting directories; verify the actual distribution path.

## Invocation
Users should normally ask for the design work itself, not select a specialist. `design-director` is the broad entry point and routes internally.

Explicit specialist invocation remains possible for debugging/expert control, but bundled specialist metadata is intentionally not written to compete with the Director for generic design requests.

Keep one canonical package in version control. Treat host-specific skill folders/build outputs as deployment targets, not separately edited sources.

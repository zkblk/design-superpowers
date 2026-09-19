# Source map and curation notes

v1 synthesizes the user's existing skill archive and reviewed public methodology. It intentionally removes duplicated triggers and absolute heuristics.

Existing archive inputs reviewed include: `ux-designer`, `ui-designer`, `frontend-design`, `wcag-audit-patterns`, `tailwind-design-system`, `webapp-testing`, `audit-website`, `copywriting`, plus uploaded `design-intelligence` and `refactoring-ui`.

External architecture/reference directions used in v1:
- Superpowers-style adaptive orchestration, focused subagents, independent review and verification-before-completion.
- W3C WCAG 2.2 and WAI ARIA APG for accessibility requirements/pattern semantics.
- Laws of UX / cognitive and Gestalt principles as context-dependent design reasoning, not measured behavior.
- Mature design-system/pattern-library approach: project system wins; reusable pattern contracts separate universal concerns from implementation-specific defaults.

Still intentionally deferred from v1 core: deep branding/visual-direction, motion library, UX writing/copy/CRO, icon/asset generation, full research-method references, and a large 100+ component pattern library. These should be added as focused specialists/references after benchmark/curation rather than bloating the core.

## OpenAI skill architecture / distribution
- OpenAI Developers — Build skills / Customization: skill folder structure, `SKILL.md` metadata, progressive disclosure, user-global `$HOME/.agents/skills`, repo `.agents/skills`, references/scripts/assets, plugin packaging for broader distribution.
- OpenAI Academy — Using skills: reusable/shareable workflows and supporting resources.

These sources inform packaging/discovery only; they do not define product-design methodology.

## Art-direction / taste curation added in v2
Public approaches reviewed for complementary mechanisms rather than copied wholesale:
- Anthropic `frontend-design`: deliberate, brief-specific visual POV and avoidance of templated defaults.
- `pbakaus/impeccable`: surface modes, incumbent visual truth, Creative North Star / design documentation, craft floor, bounded visual verification, and a vocabulary for directional refinement.
- `emilkowalski/skills` `emil-design-eng`: invisible-detail craft, component feel and motion judgment.
- `h3nryprod01/design-taste`: useful evidence that these lineages overlap heavily; its own synthesis reinforced the decision to deduplicate rather than install several overlapping taste skills.

The local `art-direction` skill is an original synthesis. It intentionally converts upstream absolute bans into context-sensitive suspicion triggers, separates art direction from routine UI craft, and stores confirmed taste as project-specific knowledge rather than universal preference.

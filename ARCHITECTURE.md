# Architecture

Design Superpowers is a portable **agent skill system**, not one giant prompt. Its key architectural constraint is that skill discovery may happen before a skill body is loaded. The Director therefore cannot rely on its body alone to suppress competing broad skills.

## Four layers

### L0 — invariants
Rules that should be true for every design change: preserve scope/business logic, do not invent data/features, use the existing design system, accessibility and responsive behavior by construction, evidence labeling, domain constraints, rendered verification.

These are not routing expertise. When the host provides persistent project instructions/rules, place them there so they exist before skill discovery. `claude/INVARIANTS.md` contains a portable source for that adapter.

### L1 — entry
`design-director` is the **only intentionally broad design discovery skill**. Its metadata covers product design, UX, UI, patterns, systems, accessibility and visual work. It performs Quick / Standard / Deep triage.

### L2 — specialists
Specialists own one question each. Their descriptions are deliberately narrow and say they are internal specialists. They should not compete for generic “improve this UI” requests.

See `ROUTING-MAP.md` for the role contract and collision policy.

### L3 — knowledge
Focused references hold narrow pattern/domain knowledge and are loaded on demand. A KPI reference can be detailed without becoming another top-level discovery candidate.

The V1 Knowledge Layer uses four classes: invariants, rule cards, precedents and project memory. Rule cards use explicit strength labels (**MUST / DEFAULT / CONTEXTUAL / AVOID**) so a robust default is not accidentally treated as universal law.

Retrieval is compositional: a surface containing search + date range + filters + table remains one Interaction Patterns decision and loads only those cards. Data visualization first loads `data-viz/choose-chart.md`, then only the relevant chart-family guidance. UI Craft follows the same pattern for spacing/hierarchy/type/grid/density/responsive foundations.

See `docs/KNOWLEDGE-LAYER.md` and `docs/KNOWLEDGE-SOURCES.md`.

## Project/session plane
On first meaningful invocation the Director establishes available capabilities: repository/project sources, existing skills, connected design sources, implementation/testing tools and durable memory. For repository work, optional `.design/` stores project-specific knowledge. It supplements, never replaces, code/docs/design-system sources of truth.

## Execution lifecycle
SESSION CAPABILITY INIT (first meaningful invocation)
→ PROJECT INIT (once when relevant)
→ DIRECTOR TRIAGE (Quick / Standard / Deep)
→ PRIMARY SPECIALIST
→ FOCUSED REFERENCE(S)
→ OPTIONAL SUPPORT SPECIALIST
→ IMPLEMENTATION
→ VERIFICATION
→ CHECKPOINT / EVIDENCE-GATED LEARNING
→ REGRESSION CASE WHEN A REUSABLE FAILURE IS FOUND
→ DONE

Skip any step whose question is already answered or irrelevant.

## Quick task example
“Improve this KPI card.”
→ Director / Quick
→ Interaction Patterns
→ `references/kpi.md`
→ inspect actual available data
→ existing design system
→ UI Craft only if visual composition needs specialist attention
→ implement
→ relevant responsive/accessibility/state verification
→ done

No persona, JTBD, workshop, Council or broad product research unless the task exposes a genuine unknown that blocks the decision.

## Component creation ladder
REUSE existing component
→ COMPOSE existing primitives
→ EXTEND an existing reusable component/pattern
→ CREATE only when a genuine reusable gap exists
→ DOCUMENT the new contract proportionately

## Existing-skill collision rule
The repository is self-contained for clean installations. An installer must not blindly duplicate a user's existing skills. Same-name or same-role skills are resolved during installation: keep the stronger implementation, narrow/retire overlapping broad auto-trigger skills, and record the decision. Bundled specialists are portable fallbacks, not mandatory duplicates.

## Why not one skill per component?
Discovery metadata itself consumes routing attention. Top-level skills represent distinct reasoning domains. Component-specific knowledge belongs in `interaction-patterns/references/` and is read only when selected.


## Learning architecture
Learning is project-local by default. Capture only reusable production failures, recurring decisions, measured evidence that contradicts a default, or repeated unresolved patterns. A reusable failure generates an original + near-neighbor + boundary + opposite/control mini-suite before canonical guidance is changed.

This prevents self-reinforcing drift: an agent's own implementation is not evidence that its choice should become a global rule. See `docs/LEARNING-LOOP.md`.

## Validation
Two complementary suites are canonical:
- `evals/ROUTING-REGRESSION-V1.md` tests entry/specialist routing, abstention and cross-cluster collisions.
- `evals/KNOWLEDGE-LAYER-V1.md` tests focused retrieval, rule quality, no-invented-data behavior, semantics/accessibility and negative controls.

V1 is considered pilot-ready, not knowledge-complete. Expansion is failure/usage-driven.

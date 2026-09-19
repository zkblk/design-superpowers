# Architecture

## Product model
Design Superpowers is a portable **agent skill system**, not one giant prompt.

### Control plane
`design-director` owns triage, scope, routing, task/result contracts, checkpoints, communication and completion.

### Specialist plane
Specialists own deep reasoning in one domain. The Director uses the minimum sufficient set.

### Knowledge plane
Focused references hold narrow pattern/domain knowledge and are loaded on demand. This is where the library can grow to hundreds of references without turning into hundreds of top-level skills.

### Project plane
`.design/` holds durable project-specific knowledge. Repository code, existing design system, product docs and tests remain primary sources of truth; `.design/` supplements rather than duplicates them.

## Execution lifecycle
PROJECT INIT (once when needed)
→ TASK TRIAGE (Quick / Standard / Deep)
→ CONTEXT PACK
→ PRIMARY SPECIALIST
→ OPTIONAL SUPPORT SPECIALIST
→ IMPLEMENTATION
→ INDEPENDENT VERIFICATION
→ CHECKPOINT / LEARNING
→ DONE

Skip any step whose question is already answered or irrelevant.

## Quick task example
"Improve this KPI card."
→ identify component and existing implementation
→ load KPI reference + project DS
→ refine/implement
→ relevant responsive/accessibility/state checks
→ done

No persona, JTBD, workshop, Council or broad product research unless the task exposes a genuine unknown that blocks the decision.

## System invariants
- explicit scope/business logic
- no invented features/data
- existing DS/components first
- accessibility by construction
- responsive/adaptive by construction
- evidence vs hypothesis labeling
- domain standards when applicable
- rendered verification when implementation exists

## Component creation ladder
REUSE existing component
→ COMPOSE existing primitives
→ EXTEND an existing reusable component/pattern
→ CREATE only when a genuine reusable gap exists
→ DOCUMENT the new contract proportionately

## Why not one skill per component?
Discovery metadata itself consumes context. Top-level skills should represent reusable reasoning domains. Component-specific knowledge belongs in `interaction-patterns/references/` and is read only when selected.

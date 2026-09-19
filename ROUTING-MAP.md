# Routing Map

Design Superpowers uses one broad discovery entry and narrow internal specialists.

| Layer | Unit | One question it owns |
|---|---|---|
| L0 | Host/project invariants | What must remain true for every design change? |
| L1 | `design-director` | What design work is needed, and how deep should we go? |
| L2 | `product-ux-strategy` | Are we solving the right problem, and what evidence/uncertainty matters? |
| L2 | `interaction-ia` | How should objects, tasks, hierarchy, navigation and flows be structured? |
| L2 | `interaction-patterns` | How should this known UI pattern behave? |
| L2 | `design-intelligence` | What perceptual/cognitive/behavioral mechanism may explain the issue? |
| L2 | `ui-craft` | How should an already-defined solution be visually composed/refined? |
| L2 | `art-direction` | What coherent visual point of view should this surface express? |
| L2 | `design-system` | What belongs in reusable tokens/components/system contracts? |
| L2 | `design-testing` | Does the result satisfy intent and relevant quality constraints? |
| L3 | `*/references/*.md` | What detailed pattern/domain knowledge is needed for this specialist decision? |

## Discovery contract

`design-director` is intentionally broad. Bundled L2 descriptions are intentionally narrow and identify themselves as internal specialists. They should not advertise themselves as automatic/general entry points.

A host may still choose a specialist directly because skill discovery is model-mediated rather than a hard-coded dispatcher. Therefore this architecture reduces routing collisions; it does not pretend metadata creates an absolute call graph.

## Collision policy for existing installations

The portable package remains self-contained. Installation into an environment that already contains design skills must resolve collisions rather than blindly duplicating them.

1. Same `name`: compare. Prefer the richer/current local skill when it can fulfill the same L2 role; do not install a duplicate.
2. Different name, same owned question: choose one primary implementation. The other becomes a reference, explicit alternate, or is skipped.
3. Broad legacy skill that overlaps several questions: do not leave aggressive auto-trigger metadata at the same discovery level as Director. Narrow its description, isolate it, or exclude it from the Design Superpowers profile.
4. Implementation/tool skills may coexist when their trigger is technical rather than “all design.”
5. Record resolved collisions so upgrades do not reintroduce them.

## Known personal-install example

A richer existing `design-intelligence` with the same skill name should be treated as the installed implementation of that role; the bundled version is a portable fallback, not a reason to create a duplicate.

## Quick route examples

**Improve this KPI card**
Director → Quick → Interaction Patterns → `references/kpi.md` → existing DS → optional UI Craft only if needed → implement → verify.

**Navigation is confusing**
Director → Standard → Interaction IA → Interaction Patterns only for concrete controls → implement/prototype → verify.

**This page works but looks generic**
Director → Standard → Art Direction → UI Craft → existing DS → render → bounded critique → verify.

**We do not understand why users abandon this workflow**
Director → Deep → Product UX Strategy → evidence/research → IA/Patterns only after the problem is sufficiently framed.

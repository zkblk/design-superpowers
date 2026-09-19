# Routing Regression Corpus v1

This corpus tests architecture, not memorized keywords. Run it against the **entire active skill discovery set**, not only Design Superpowers.

## Scoring dimensions

- entry_accuracy
- specialist_precision
- specialist_recall
- abstention_accuracy
- unnecessary_specialist_rate
- invariant_violations
- cross_cluster_collision
- outcome_quality

A second specialist is not automatically a collision. Sequential delegation is valid when the Director decomposes a multi-intent task and each specialist owns a distinct decision.

## Expected-route notation

- `D` = Design Director
- `PX` = Product UX Strategy
- `IA` = Interaction / IA
- `IP` = Interaction Patterns
- `DI` = Design Intelligence
- `UI` = visual execution / UI Designer
- `AD` = Art Direction
- `DS` = Design System
- `MO` = Motion specialist if installed
- `CF` = Contradiction specialist if installed
- `V` = verification
- `IMPL` = technical implementation skill
- `NONE` = no L2 specialist required

## Core cases

| # | Prompt | Expected primary route | Key failure to detect |
|---:|---|---|---|
| 1 | Improve this KPI card. | D → Quick → IP → V | Broad UX/UI skills steal entry. |
| 2 | Change this card padding to the existing space-3 token. | D → Quick → NONE → IMPL → V | Unnecessary specialist. |
| 3 | The navigation is confusing. | D → Standard → IA → V | UI polish used instead of structure. |
| 4 | This page works but feels generic. | D → Standard → AD → UI → V | Pattern/UX research over-trigger. |
| 5 | Why do users keep missing this action? | D → Standard → DI → V/test plan | Psychology catalog or visual skill claims certainty. |
| 6 | We don't know why users abandon this workflow. | D → Deep → PX | Premature UI solution. |
| 7 | Create a semantic token for warning emphasis used across products. | D → Standard → DS → V | One-off styling instead of system decision. |
| 8 | Make this accessible. | D → scope → relevant creation role + invariants → V | Accessibility treated only as late audit. |
| 9 | Audit this finished site for WCAG issues. | VERIFICATION/audit direct or D → V | Generic redesign triggered. |
| 10 | Implement the already-approved component exactly in React. | IMPL direct; D optional only if ambiguity | Design ceremony added to implementation. |
| 11 | Implement the approved drawer animation in React. | animation IMPL direct | Motion strategy restarted unnecessarily. |
| 12 | The drawer behavior is correct but the opening motion feels wrong. | D → MO (if installed) → IMPL → V | Generic UI or animation implementation decides intent. |
| 13 | The table is hard to scan, filters confuse users, and it looks dated. | D → decompose: IP/IA → UI → V | Multiple skills claim original prompt independently. |
| 14 | Enterprise users need more information but the screen is already too dense. | D → CF if genuine conflict, then IA/UI | Contradiction skill triggers on routine polish. |
| 15 | Add an empty state to ApplicationsTable using existing product behavior. | D → Quick → IP → IMPL → V | Product discovery invented. |
| 16 | Make the dashboard premium. | D → clarify minimal visual intent → AD/UI | Research/psychology triggered without evidence need. |
| 17 | Fix the typo in this button label. | NONE / implementation edit | Design system invoked. |
| 18 | Add keyboard support to this existing combobox. | D → Quick → IP/invariants → IMPL → V | Broad accessibility audit for local behavior. |
| 19 | Redesign onboarding; we don't yet know which step causes failure. | D → Deep → PX → evidence before IA/UI | UI starts before uncertainty resolved. |
| 20 | The approved layout breaks at 768px. Fix it without changing desktop. | D → Quick → UI/IMPL → V | Broad redesign or invented breakpoint system. |

## Adversarial ambiguity cases

21. "Make this card better."
22. "This feels off."
23. "Clean up this flow."
24. "The UI is too busy."
25. "Users don't trust this number."
26. "Make it easier to use."
27. "This needs more delight."
28. "The form feels slow."
29. "Simplify this without removing functionality."
30. "Make the hierarchy clearer."

For 21–30, grade whether the Director identifies the smallest unresolved question instead of keyword-routing blindly. The expected specialist depends on inspected project context; unsupported assumptions are failures.

## Cross-cluster negative controls

31. Fix this API pagination bug.
32. Optimize this SQL query.
33. Write unit tests for this parser.
34. Update these dependencies.
35. Review this authentication middleware for security issues.

Expected: Design Superpowers does not claim entry.

## Invariant traps

36. Improve this KPI card; the API only provides value and label. — Must not invent delta, target or trend.
37. Make the table cleaner; do not remove any columns. — Preserve scope/data.
38. Restyle this page using the existing design system only. — No parallel tokens/components.
39. Make the modal mobile-friendly without changing its business logic. — Responsive + scope preserved.
40. Improve this destructive action. — Preserve functionality; improve hierarchy/safety without inventing permissions.

## Pass bar for practical use

- Generic design entry accuracy: 100%
- L2 precision: >=95%
- L2 recall: >=95%
- Abstention accuracy: >=95%
- Unnecessary specialist rate: <=5%
- Critical invariant violations: 0
- Cross-cluster false entry on negative controls: 0
- Outcome quality: no worse than the current baseline

After tuning on this corpus, add at least 15 unseen prompts before declaring routing stable.

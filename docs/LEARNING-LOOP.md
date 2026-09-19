# Production Learning Loop
Design Superpowers does not rewrite itself after every task. Learning is evidence-gated.

Capture only when reusable: a production failure exposed a missing/incorrect rule; a project decision will recur; testing/analytics contradicted a default; or the same unresolved pattern repeats.

Store project-local learning with context, observed evidence, decision, scope, confidence and revisit condition. Do not turn one implementation accident into a rule.

## Failure → regression
Generate a mini-suite: original failure + 2 near-neighbors + 2 boundary cases + 1 opposite/control case. Change canonical guidance only if it fixes these without breaking existing regression.

Project learning stays local by default. Promote only when domain-general and supported by standards/research or repeated independent evidence.

**Anti-self-corruption:** the agent may not silently convert its own output into a MUST. Keep observation, hypothesis, project decision and canonical rule distinct.
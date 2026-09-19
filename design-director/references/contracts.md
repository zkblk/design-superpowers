# Delegation Contracts

## Task Contract
Pass only the context required for the specialist to make the decision:

- `task`: concrete objective
- `mode`: quick | standard | deep
- `artifact`: files/screen/component/flow to inspect
- `intent`: known user/business/design intent
- `preserve`: behavior/data/scope that must not change
- `allowed_change`: explicit change boundary
- `project_sources`: relevant code/docs/.design/design-system sources
- `invariants`: accessibility/responsive/domain/system constraints that apply
- `evidence`: known observations/research/data
- `unknowns`: unresolved facts, not guesses
- `acceptance`: what must be true to call the task complete

Do not send the whole conversation when a smaller context pack is sufficient.

## Result Contract
Return:

- `decision`: what should happen
- `rationale`: why; identify evidence vs heuristic/hypothesis
- `change`: proposed or completed change
- `affected`: artifacts/components/files
- `verification`: what was actually checked
- `uncertainty`: what remains unknown
- `checkpoint`: durable project knowledge, or `none`

The Director synthesizes results. A specialist does not silently expand product scope.

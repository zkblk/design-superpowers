# Combobox
Use when users need to select from suggestions while typing/searching; do not substitute it for a simple small select without need.

Define: input/value model, suggestions source, filtering, freeform vs constrained value, single/multi-select, active vs selected option, keyboard navigation, focus, opening/dismissal, empty/no-match/loading/error states, async behavior, long labels, clear/reset, mobile behavior, accessible name/description and option semantics.

Prefer the project's established primitive/library. Verify typing does not destroy a valid value unexpectedly; selection and focus are distinguishable; Arrow keys/Enter/Escape behave coherently; pointer and keyboard produce the same state model; popup placement/overflow does not obscure critical content.

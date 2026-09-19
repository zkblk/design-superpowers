# Combobox
Use when users benefit from typing/searching among options; prefer simpler select/radios when options are few and stable.
**MUST** Define editable vs select-only behavior, popup, selection, keyboard navigation, focus, expanded state and accessible relationships.
**DEFAULT** Preserve typed text unless selection/recovery explicitly requires otherwise.
**AVOID** custom keyboard behavior conflicting with platform/APG expectations and comboboxes for a handful of visible choices.
Prefer native semantics where possible; otherwise follow the relevant WAI-ARIA APG combobox pattern.
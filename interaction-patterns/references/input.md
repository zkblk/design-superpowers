# Text Input

**MUST** Provide a programmatic label. Placeholder text is not a substitute for a label. Preserve entered data after validation errors.

**DEFAULT** Put concise requirements/help before failure where they can prevent error. Match input width/format to the expected data when that improves comprehension.

**DEFAULT** Use native input semantics/autocomplete/input purpose where applicable.

**CONTEXTUAL** Visually hidden labels require strong surrounding context and accessibility review; visible labels are the default.

**AVOID** placeholder-only forms, clearing invalid values, instructions that appear only after error, and using color alone to indicate validity.

States: empty, filled, focus, invalid, disabled, read-only, loading if remote validation exists.

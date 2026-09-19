# Empty, Loading and Error States
**MUST** Distinguish first-use empty, filtered no-results, loading, partial data, permission restriction and failure.
**DEFAULT** Empty states explain absence and useful next action; no-results preserve query/filters and support refinement/reset.
**DEFAULT** Loading feedback matches expected duration/layout; skeletons fit known structure.
**MUST** Errors preserve recoverable work and provide a next step when one exists.
**AVOID** decorative empties replacing guidance, infinite spinners, or permission denial shown as generic no-data.
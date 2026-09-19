# Knowledge Layer V1 Evaluation
Test retrieval, rules, abstention and composition.

Cases: value-only KPI; KPI with baseline; KPI with history; invoice search+date+filters+table; 3 choices vs combobox; 500 searchable choices; DOB date input; destructive modal; editable data grid; hierarchical long-form data; category comparison; 24-month trend; correlation scatter; single metric no chart; 5-part composition; 12 similar slices; dense UI "cleaner"; existing spacing tokens; decorative button icons; unfamiliar nav icons; filtered no-results; table request error; long workflow in modal; URL pagination; client-only pagination; color-only chart series; misleading bar axis; API pagination negative control; padding-only change; dashboard KPI+table+chart.

Pass: relevant-card recall >=95%; irrelevant-card load <=10%; invented-data violations 0; critical accessibility/semantic violations 0; negative-control false entry 0; no whole-library loading; composite cases remain one specialist unless distinct specialist questions exist.

Red-team: did DEFAULT become law; did a DS convention masquerade as platform truth; could native semantics be simpler; did polish override task/data integrity; did retrieval cost exceed value; is a new card duplicate?
# Table / Data Grid
Use a table for flat structured data where comparison across rows/columns matters. Use a data grid when cell interaction/editing is primary; use another structure for strongly hierarchical/long-form content.
**DEFAULT** Short headers, one data meaning per column, minimal necessary columns, intuitive row order and concise cells.
**DEFAULT** Right-align comparable numbers and use tabular numerals when available.
**DEFAULT** Leave absent values blank or explain absence; do not use arbitrary "-", x, icon or emoji as universal empty markers.
**MUST** Sorting state and controls are perceivable and keyboard accessible; the table has accessible context/name.
**CONTEXTUAL** Narrow screens may prioritize columns, resize/wrap or use accessible horizontal scrolling; do not silently lose essential data.
Test empty, one/many rows, long content, sorting, filters, pagination, actions, loading/error and narrow viewport.
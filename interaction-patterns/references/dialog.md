# Modal Dialog
Use when a focused decision/task must temporarily interrupt the underlying page.
**MUST** Move focus inside, contain tab sequence while modal, support Escape where dismissal is allowed, and return focus appropriately.
**DEFAULT** Give a clear accessible title and keep the task bounded.
**MUST** Destructive confirmations state the consequence and use an action-specific label.
**AVOID** routine information in modals, modal-on-modal flows, ambiguous close behavior, and long navigational workflows forced into a dialog.
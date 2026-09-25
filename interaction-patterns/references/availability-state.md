# Availability State: Default vs Hidden vs Disabled vs Read-only

Use this card when deciding whether a feature/control should remain available, be hidden, disabled, read-only, or represented as static text.

## Decision sequence

1. **Should the feature be fully available?**
   - Yes → **default state**.
   - No / limited → continue.

2. **Will the user ever be able to interact with this component in the current context?**
   - No → **hidden** can be appropriate when exposing it has no useful informational value.
   - Yes → continue.

3. **Is the element primarily interactive or informational?**
   - Primarily interactive → ask whether it can remain enabled safely.
   - Primarily informational → ask whether users can edit/enable it elsewhere.

4. **Interactive: can it stay enabled at all times?**
   - Yes → prefer **default/enabled**, and handle errors/constraints after activation when recovery is safe and understandable.
   - No → ask whether enabling it could cause/prevent a critical mistake.
     - Critical safety/data-integrity constraint → **disabled** may be justified.
     - Otherwise reconsider whether enabled + explanatory feedback is better.

5. **Informational: can users edit/enable it elsewhere?**
   - Yes → **read-only** may be appropriate; explain why it cannot be changed here when that is not obvious.
   - No → prefer **static text/content** rather than making non-interactive information look like a disabled control.

## State contracts

### Default / enabled
**DEFAULT** Prefer enabled controls when the user can attempt the action and the system can explain/recover from invalid conditions safely.

**AVOID** disabling merely to avoid writing validation/error feedback.

### Hidden
**CONTEXTUAL** Hide when the capability is genuinely irrelevant/unavailable in the current context and showing it would not help users understand the product or recover.

**AVOID** hiding temporary unavailability that users need to understand, or hiding functionality whose discoverability matters.

### Disabled
**CONTEXTUAL** Disable when interaction must be prevented before activation, especially where activation could create a critical, destructive, duplicate, invalid, or unsafe operation.

**MUST** A disabled state must not rely on color alone and must remain perceivable.

**DEFAULT** If users need to understand why an action is unavailable, provide that explanation in accessible text/context. Native disabled controls are not focusable; when discoverability/explanation requires focus, choose semantics deliberately rather than blindly applying `disabled`.

**AVOID** disabled controls as the default solution for incomplete forms when validation and recovery would be clearer.

### Read-only
Use when the information/control value is meaningful here but modification is not permitted here.

**DEFAULT** Preserve normal legibility rather than making read-only content look unavailable.

**DEFAULT** Explain why editing is unavailable when it is not obvious, and where editing can happen when that is useful.

**MUST** Do not present read-only as disabled if users still need to read, select, copy, navigate, or focus the content.

### Static text
Use when the content is purely informational and has no editing/action affordance in this context.

**AVOID** rendering static information as a disabled form control merely for visual consistency.

## Important distinctions

- **Hidden** = user does not need the capability/content in this context.
- **Disabled** = action exists, but activation is currently prevented.
- **Read-only** = value/content is relevant and readable, but not editable here.
- **Static** = information is not an interactive control.
- **Default/enabled** = interaction is available; constraints can be handled through normal feedback/recovery.

Do not choose among these states for visual convenience. Base the choice on capability, interaction intent, safety/data integrity, discoverability, recovery and accessibility.

## Verify
Check keyboard/focus behavior, accessible semantics/name/description, explanation of unavailability, contrast/perceivability, copy/select behavior, form submission behavior, cursor/affordance, and whether the state changes across roles/permissions or lifecycle.

## Provenance
Synthesized from the supplied “Hidden vs. Disabled vs. Read-Only Decision Tree” by Vitaly Friedman (noted in the image as inspired by Sam Solomon), with state-strength labels normalized to Design Superpowers conventions.
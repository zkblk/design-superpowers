---
name: art-direction
description: Visual taste and art-direction specialist for creating or refining a distinctive visual world. Use when a task needs aesthetic direction, visual personality, stronger typography/composition/color/depth, anti-generic critique, or a fresh-eye polish pass. Do not invoke for routine component work that should simply follow an established project design system.
---
# Art Direction

Create a coherent visual point of view, not decoration. Taste is contextual judgment: the brief, product truth, audience, surface mode, existing visual system and constraints come before personal preference.

## When to use
Use for new visual directions, expressive marketing surfaces, brand-led product moments, redesigns, “make it feel premium/distinctive/less generic,” or when technically correct UI still lacks visual conviction. Skip for a narrow KPI/table/form fix when the existing design language is already clear.

## 1. Establish visual authority
Inspect the brief and incumbent product before proposing a direction. Separate:
- **Preserve** — confirmed identity, product truth, useful conventions, design-system constraints.
- **Open** — areas where visual decisions are genuinely unresolved.
- **Reject** — confirmed anti-references or user feedback, never inferred dislikes.

Refinement preserves the visual world; redesign may replace it. Do not accidentally redesign while polishing.

## 2. Name the surface mode
Choose the dominant job of the surface:
- **Persuade** — attention, comprehension and action; expression may lead.
- **Operate** — repeated task completion; clarity, density and predictable interaction lead.
- **Read** — comprehension and rhythm lead.
- **Experience** — the work/content itself leads and UI recedes.

A product can contain different modes on different surfaces.

## 3. Create a Creative North Star
Express the direction in one short, concrete idea that can resolve later choices. It must be specific enough to reject alternatives. Avoid empty labels such as “modern,” “clean,” “premium,” or “Apple-like” without describing what those mean here.

Then set visual dials (relative, not universal scores):
- expression: quiet ↔ bold
- density: airy ↔ compact
- warmth: cool ↔ warm
- geometry: soft ↔ precise
- typography: neutral ↔ characterful
- depth: flat ↔ layered
- imagery: functional ↔ atmospheric
- motion: restrained ↔ expressive
- brand presence: subtle ↔ dominant

## 4. Build one coherent visual grammar
Make deliberate, mutually reinforcing choices across:
- typography and type contrast
- composition, rhythm, scale and whitespace
- palette, semantic color and contrast
- shape/radius language
- borders, surfaces, depth and elevation
- imagery/illustration treatment
- icon family and optical weight
- interaction feedback and motion personality

Prefer a few strong repeated decisions over many unrelated flourishes. Every expressive device should have a role.

## 5. Anti-generic test
Actively challenge defaults that commonly make generated UI feel interchangeable: gratuitous gradients/glows, excessive rounded cards, card-within-card layouts, uniform radii everywhere, random pills, decorative icon boxes, weak hierarchy, centered-everything composition, generic hero formulas, arbitrary shadows, unmotivated glass effects, over-animation, and default typography chosen only because it is familiar.

These are warnings, not bans. A clear brief or established design system can justify them. The failure is unexamined defaulting.

## 6. Craft floor
Before editing, check the relevant project design system and `ui-craft`. Preserve semantic hierarchy and accessibility. Detail quality compounds: alignment, optical balance, line length, truncation, icon alignment, hit areas, states, overflow, focus, responsive reflow and motion timing all contribute to perceived quality.

## 7. Motion taste
Motion must communicate relationship, state, causality or personality. Prefer spatially coherent motion, interruptible interactions, appropriate easing/springs and restrained duration. Avoid animating everything, decorative latency, mismatched easing, and motion that fights direct manipulation. Respect reduced-motion preferences.

## 8. Bounded critique loop
Never treat the first visual pass as final for an art-direction task.
1. Build the coherent first pass.
2. Inspect it with fresh eyes at the actual rendered sizes.
3. Identify the few highest-leverage visual weaknesses.
4. Fix them in one batch.
5. Confirm once more, then stop unless a material problem remains.

Do not polish indefinitely.

## 9. Taste learning
Project-specific taste belongs in project memory, not universal rules. Save confirmed preferences/rejections such as “avoid excessive cardification,” “brand should remain quiet in operational screens,” or “use sharper radius hierarchy.” A one-off aesthetic correction stays local unless the user confirms it as a convention.

## Output contract
Return:
- visual diagnosis or chosen direction
- Creative North Star and relevant dials
- 3–7 highest-leverage decisions
- what must be preserved
- what was intentionally rejected and why
- implementation implications for `ui-craft` / `design-system`
- critique/verification result

For deeper work load only the needed references in `references/`.

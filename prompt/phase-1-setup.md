# Phase 1 – Setup

## Goal
- Establish repo conventions for `{{PRODUCT_NAME}}`
- Decide baseline architecture and tooling
- Align on how `docs/` and `prompt/` are used

## Inputs
- `setup.md`
- `docs/assets.md`
- `docs/design-guidelines.md`
- `docs/ui-structure.md`

## Assumptions
- `{{TECH_STACK}}` is either chosen or can be decided now
- The app does not have established conventions yet

## Constraints
- Keep structure stable; do not introduce new top-level folders unless required
- Use placeholders consistently (e.g., `{{PRODUCT_NAME}}`)
- Avoid project-specific logic or data

## Tasks
1. Define folder and file conventions for the build target.
2. Document baseline architecture decisions (routing, data layer, UI layers).
3. Create or update a minimal project skeleton for `{{PRODUCT_NAME}}`.
4. Add a short usage note explaining how to run the remaining phases.

## Acceptance criteria
- [ ] Conventions are explicit and easy to follow
- [ ] Baseline architecture choices are recorded
- [ ] Skeleton compiles or renders without feature logic
- [ ] This phase outputs or updates the core project structure

## Notes / common pitfalls
- If this phase does not apply (existing mature project), skip it.
- Avoid over-building; focus on a clean foundation.

# Phase 7 – Auth

## Goal
- Implement authentication and role-based access
- Define protected routes and session state
- Support multiple providers (e.g., `{{AUTH_PROVIDER}}`)

## Inputs
- `docs/data-models.md`
- `docs/journeys.md`

## Assumptions
- Auth is required for `{{PRODUCT_NAME}}`
- Roles are defined in `docs/data-models.md`

## Constraints
- Keep auth provider replaceable
- Do not block public routes unnecessarily
- Preserve existing routing structure

## Tasks
1. Implement login, signup, and logout flows.
2. Add session management and protected routes.
3. Implement role checks for sensitive areas.
4. Add account settings or profile basics.

## Acceptance criteria
- [ ] Auth flows function end-to-end
- [ ] Protected routes and role checks exist
- [ ] Session state is stable across reloads
- [ ] Output includes auth wiring and route guards

## Notes / common pitfalls
- If no auth is required, skip this phase.
- Avoid mixing auth logic with business logic.

# Phase 9 – Emails and Admin

## Goal
- Define transactional email flows
- Provide a lightweight admin surface
- Keep both optional and modular

## Inputs
- `docs/journeys.md`
- `docs/content-pages.md`
- `docs/data-models.md`

## Assumptions
- `{{EMAIL_PROVIDER}}` is chosen (or can be stubbed)
- Admin needs are defined

## Constraints
- Do not build a full admin app unless required
- Keep emails template-based and reusable
- Preserve public/app separation
- Do not apply final styling or polish; leave visual refinement for Phase 10.

## Tasks
1. Define key transactional emails and triggers.
2. Implement email templates or stubs.
3. Create an admin surface for core entities.
4. Add access controls for admin views.

## Acceptance criteria
- [ ] Emails exist for key journeys
- [ ] Admin surfaces cover core entities
- [ ] Access control is enforced
- [ ] Output includes email templates and admin routes

## Notes / common pitfalls
- If email/admin is not needed, skip this phase.
- Avoid hardcoding provider-specific logic.

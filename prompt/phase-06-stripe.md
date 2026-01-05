# Phase 6 – Billing

## Goal
- Define plans, entitlements, and billing flows
- Implement checkout and post-purchase states
- Support a provider like `{{PAYMENT_PROVIDER}}` (Stripe preferred)

## Inputs
- `docs/data-models.md`
- `docs/journeys.md`
- `docs/content-pages.md`

## Assumptions
- Billing is required for `{{PRODUCT_NAME}}`
- Plans and pricing are defined

## Constraints
- Keep billing logic isolated and replaceable
- Do not require production keys
- Avoid hardcoding pricing in multiple places
- Do not apply final styling or polish; leave visual refinement for Phase 10.

## Tasks
1. Define plan and entitlement models.
2. Implement checkout flow and confirmation state.
3. Add webhook or callback handling stubs.
4. Add billing settings or customer portal access.

## Acceptance criteria
- [ ] Plans and entitlements are represented in the data model
- [ ] Checkout and confirmation flows exist
- [ ] Billing settings surface is available
- [ ] Output includes billing flow and integration points

## Notes / common pitfalls
- If there is no paid plan, skip this phase.
- Avoid mixing billing concerns with unrelated features.

# Phase 5 – DB + Backend Flow (Supabase Path)

## Goal
- Define data flow between UI and backend
- Implement core read/write paths
- Keep Supabase as the first-class option, but stay provider-agnostic

## Inputs
- `docs/data-models.md`
- `docs/schema-initial.sql` (optional)
- `docs/schema-cms.sql` (optional)

## Assumptions
- `{{DB_PROVIDER}}` is chosen (Supabase or alternative)
- Entities from phase 4 exist

## Constraints
- Do not hardcode provider-specific logic unless required
- Keep data flows minimal and focused on core journeys
- Preserve existing structure

## Tasks
1. Map UI actions to backend operations.
2. Implement repositories or API calls for core entities.
3. Add data loading and mutation patterns (with error states).
4. Document provider-specific setup if using Supabase.

## Acceptance criteria
- [ ] Core CRUD flows exist for key entities
- [ ] Error/loading states are wired to data flow
- [ ] Provider setup is documented where needed
- [ ] Output includes data flow wiring and backend integration points

## Notes / common pitfalls
- If there is no DB or backend, skip this phase.
- Avoid coupling UI too tightly to a single provider.

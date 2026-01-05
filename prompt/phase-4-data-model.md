# Phase 4 – Data Model

## Goal
- Define types and entities for `{{PRODUCT_NAME}}`
- Specify relationships and permissions
- Outline API surface assumptions

## Inputs
- `docs/data-models.md`
- `docs/schema-initial.sql` (optional)
- `docs/schema-cms.sql` (optional)

## Assumptions
- Core entities are known or can be derived
- DB provider is decided (`{{DB_PROVIDER}}`)

## Constraints
- Keep entities generic and product-agnostic
- Use placeholders for any product-specific fields
- Do not implement full DB integration yet

## Tasks
1. Translate entities into typed models or schemas.
2. Define relationships and access rules.
3. Document API assumptions (REST/RPC, endpoints).
4. Align with optional SQL references if provided.

## Acceptance criteria
- [ ] Entities and relationships are clear
- [ ] Permissions and roles are specified
- [ ] API assumptions are documented
- [ ] Output is limited to data definitions and types

## Notes / common pitfalls
- If there is no data model, skip this phase.
- Avoid overfitting to one provider.

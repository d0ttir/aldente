# Data Models

Purpose: define data entities, relationships, and permissions for `{{PRODUCT_NAME}}`.

## Template
### Entities
- Entity name
  - Fields
  - Relationships
  - Ownership

### Relationships
- One-to-many, many-to-many, join tables

### Permissions and roles
- Roles: admin, member, viewer (customize)
- Access rules per entity

### Events and audit logging (optional)
- Event name
- Trigger
- Payload

### API surface assumptions
- REST or RPC endpoints
- Client-side caches

### CMS/admin entities (optional)
- page, content_block, media, redirect, seo_meta
- feature_flag, setting

## Example
Entities
- user
  - id, email, name
  - belongs to organization via membership
- organization
  - id, name, plan_id
- membership
  - user_id, organization_id, role

Permissions
- Admin: manage billing and members
- Member: use core features

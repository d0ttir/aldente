# UI Structure

Purpose: define route map, layouts, and module breakdown for `{{PRODUCT_NAME}}`.

## Template
### Route map
- Public routes: `{{PAGES}}`
- App routes: `/app/*`
- Auth routes: `/login`, `/signup`, `/reset`
- Legal routes: `/privacy`, `/terms`

### Layout patterns
- Marketing layout: header, hero, sections, footer
- App layout: sidebar/nav, top bar, content
- Settings layout: tabs or left nav

### Page modules
- Page: `/pricing`
  - Modules: pricing tiers, FAQ, CTA
- Page: `/app/dashboard`
  - Modules: summary cards, activity, quick actions

### Reusable components
- Navigation: header, footer, sidebar
- UI blocks: cards, tables, forms, modals
- Feedback: empty, loading, error states

### Admin routes (optional)
- `/admin` dashboard
- `/admin/users`
- `/admin/content`
- `/admin/settings`

## Example
Route map
- Public: `/`, `/pricing`, `/about`
- App: `/app`, `/app/settings`

Layout patterns
- App layout: sidebar + top bar + content

Reusable components
- `PricingTable`, `PlanCard`, `FeatureList`

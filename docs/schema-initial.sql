-- Optional reference schema for a generic SaaS product.
-- Use as a starting point only; adjust to match {{PRODUCT_NAME}}.

-- Users
create table if not exists users (
  id uuid primary key,
  email text unique not null,
  name text,
  created_at timestamp with time zone default now()
);

-- Organizations or teams
create table if not exists organizations (
  id uuid primary key,
  name text not null,
  created_at timestamp with time zone default now()
);

-- Memberships
create table if not exists memberships (
  id uuid primary key,
  user_id uuid references users(id),
  organization_id uuid references organizations(id),
  role text not null,
  created_at timestamp with time zone default now()
);

-- Core product entity (customize)
create table if not exists projects (
  id uuid primary key,
  organization_id uuid references organizations(id),
  name text not null,
  status text,
  created_at timestamp with time zone default now()
);

-- Billing references (optional)
create table if not exists subscriptions (
  id uuid primary key,
  organization_id uuid references organizations(id),
  plan_id text,
  status text,
  current_period_end timestamp with time zone,
  created_at timestamp with time zone default now()
);

-- Audit log (optional)
create table if not exists audit_logs (
  id uuid primary key,
  organization_id uuid references organizations(id),
  actor_id uuid references users(id),
  action text not null,
  metadata jsonb,
  created_at timestamp with time zone default now()
);

-- Optional CMS/marketing schema for {{PRODUCT_NAME}}.
-- Only use if you plan to manage marketing content in the DB.

create table if not exists pages (
  id uuid primary key,
  slug text unique not null,
  title text not null,
  body text,
  status text default 'draft',
  published_at timestamp with time zone
);

create table if not exists posts (
  id uuid primary key,
  slug text unique not null,
  title text not null,
  summary text,
  body text,
  status text default 'draft',
  published_at timestamp with time zone
);

create table if not exists faqs (
  id uuid primary key,
  question text not null,
  answer text not null,
  order_index integer default 0
);

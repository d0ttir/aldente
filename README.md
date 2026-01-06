![Aldente boilerplate header](images/aldente-boilerplate.webp)

# SaaS Vibe-Coding Boilerplate

## What it is
A reusable prompt + docs kit for building SaaS products with AI-assisted builders. Fill the docs, run the phases, and ship a clean, consistent app without rebuilding the fundamentals every time.

## Who it is for
Builders who want a structured, prompt-driven workflow that stays product-agnostic and tooling-flexible.

## What you get
- Structured [docs/](docs/) templates for product definition
- Phased prompts in [prompt/](prompt/) for implementation
- A repeatable flow from idea to build
- Optional Phase 8 for CMS + Admin and Phase 11 for Launch + Audit

## Recommended stack (default)
- Frontend: React + Vite
- Styling: Tailwind CSS + shadcn/ui
- Backend/DB: Supabase (or any Postgres-compatible provider)
- Auth: Supabase Auth or Clerk
- Payments: Stripe
- Email: Resend or Postmark

## Works with
Codex, Claude Code, Cursor, Lovable (and other AI-assisted builders). See [setup.md](setup.md) and [agents/README.md](agents/README.md).

## Quick start
Start with [setup.md](setup.md) for the full workflow and phase map.

## Using with AI agents
See [AGENT_INSTRUCTIONS.md](AGENT_INSTRUCTIONS.md) and [agents/README.md](agents/README.md) for adapters and workflow notes.

Starter prompt (copy/paste):
```
You are my coding agent working inside this repo. Follow the repo’s rules exactly.
1) Read: [AGENT_INSTRUCTIONS.md](AGENT_INSTRUCTIONS.md).
2) Read the relevant inputs in [docs/](docs/) for this phase.
3) Execute exactly one phase prompt from [prompt/](prompt/) (start with Phase 1 unless I specify otherwise).
4) Keep changes minimal and avoid renaming files/folders.
5) After implementing, output a short summary, a pass/fail checklist, and blockers if any.
6) Stop and wait for the next phase.
```

## License
MIT. See `LICENSE`.

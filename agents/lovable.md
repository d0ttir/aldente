# Lovable Adapter

## Recommended starter prompt (copy/paste)

You are my coding agent working inside this repo. Follow the repo’s rules exactly.

1) First, read and follow: `AGENT_INSTRUCTIONS.md`.
2) Then read the relevant inputs in `docs/` for this phase (do not assume missing info).
3) Then open and execute exactly one phase prompt from `prompt/` (start with Phase 1 unless I specify otherwise).
4) Keep changes minimal and consistent with the existing structure. Do not rename files/folders unless explicitly instructed.
5) After implementing, output:
   - a short summary of changes
   - a checklist of the phase acceptance criteria with pass/fail notes
   - any questions/blockers (only if required)
6) Stop. Do not continue to the next phase until I say so.

Now start by reading `AGENT_INSTRUCTIONS.md` and listing which `docs/*` files you will use for Phase 1.


Lovable is strong for UI scaffolding and rapid iteration with structured prompts and attached context.

## Run a phase prompt
1. Copy a phase prompt from `prompt/` (e.g., `prompt/02-layouts.md`).
2. Paste it into Lovable as the task.
3. Attach the `docs/*` files listed in the phase as context.
4. Review changes and rerun the phase if needed.

## Ensure access to `docs/*`
- Attach the exact `docs/*` files referenced by the phase.
- If context limits apply, prioritize `docs/ui-structure.md`, `docs/design-guidelines.md`, and `docs/journeys.md`.

## Checkpointing
- Commit after each phase.
- Review layout and routing before moving to the next phase.

## Common pitfalls
- Running phases without the required docs
- Over-polishing visuals before the design system phase
- Forgetting to update docs when assumptions change
- Mixing marketing and app routes unintentionally
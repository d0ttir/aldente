# Codex Adapter

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


Codex is good at implementing structured changes across multiple files and keeping prompt constraints consistent across phases.

## Run a phase prompt
1. Open the phase file in `prompt/` (e.g., `prompt/02-layouts.md`).
2. Provide the phase prompt to Codex as the task.
3. Attach or reference the relevant `docs/*` files listed in the phase.
4. Ask Codex to implement changes and summarize outputs.

## Ensure access to `docs/*`
- Attach the specific `docs/*` files for the phase.
- If unsure, attach `docs/ui-structure.md`, `docs/design-guidelines.md`, and `docs/journeys.md` as baseline context.

## Checkpointing
- Commit after each phase.
- Review file changes for scope creep before moving on.

## Common pitfalls
- Skipping a required `docs/*` input
- Over-styling before the design system phase
- Introducing product-specific logic too early
- Changing file paths without updating references
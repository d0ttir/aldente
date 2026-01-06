# Claude Code Adapter

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


Claude Code is strong at iterative refactors and detailed reasoning when implementing prompt-driven changes.

## Run a phase prompt
1. Open the phase file in `prompt/` (e.g., `prompt/phase-03-structure.md`).
2. Provide the phase prompt as the instruction.
3. Supply the `docs/*` inputs listed in that phase.
4. Ask for a summary of files touched and any open questions.

## Ensure access to `docs/*`
- Provide the exact `docs/*` files referenced in the phase.
- Keep the docs visible for the entire run to avoid drift.

## Checkpointing
- Commit after each phase.
- Review diffs for structural consistency and naming.

## Common pitfalls
- Missing optional docs that still influence scope
- Mixing implementation with styling too early
- Introducing new folders without updating docs
- Letting assumptions override provided docs
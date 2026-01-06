# Cursor Adapter

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


Cursor is good for fast, interactive edits and refactors while keeping phase scope tight.

## Run a phase prompt
1. Open the phase file in `prompt/` (e.g., `prompt/phase-04-data-model.md`).
2. Paste the phase prompt into Cursor’s instruction panel.
3. Ensure the listed `docs/*` inputs are open or attached.
4. Apply changes and validate against acceptance criteria.

## Ensure access to `docs/*`
- Open the referenced `docs/*` files in the editor.
- If you use context selection, include the docs explicitly.

## Checkpointing
- Commit after each phase.
- Scan for partial edits or leftover TODOs.

## Common pitfalls
- Not including the `docs/*` inputs in context
- Editing more than one phase at a time
- Skipping acceptance criteria checks
- Renaming files without updating references
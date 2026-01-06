# Agent Instructions

## Core principles
- Keep filenames and prompt structure stable.
- Do not create tool-specific prompt variants.
- Update `docs/*` references if anything moves.
- Prefer small, phase-scoped changes.

## How phases are executed
- Read the required `docs/*` inputs first.
- Follow the phase prompt tasks step-by-step.
- Update only the files needed for that phase.

## Output expectations
- Each phase should produce the outputs listed in its acceptance criteria.
- Document deviations and missing inputs instead of guessing.

## Quality bar
- Type safety baseline: typed props, shared DTO/domain types, optional Zod with inferred types.
- Error handling: ErrorBoundary usage + centralized API wrapper.
- Accessibility: keyboard access, focus states, labels, empty/loading/error states.

## When to skip a phase
- Skip if the phase does not apply to the product scope.
- Remove or adjust downstream assumptions if you skip.

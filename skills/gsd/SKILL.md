---
name: gsd
description: >-
  Spec-Driven Development (SDD) planning and execution framework. Use this skill when
  the user asks for structured project planning, roadmapping, multi-phase feature development,
  or wants to execute complex tasks using the GSD methodology (requirements, roadmaps,
  state tracking, and atomic tasks to prevent context rot).
---

# ⚡ GSD (Get Shit Done) — Spec-Driven Planning & Execution

The GSD methodology is a spec-driven development (SDD) framework designed to eliminate "context rot"—the quality degradation that happens when an AI model's context window gets cluttered with conversational back-and-forth.

Instead of ad-hoc "vibe coding", GSD enforces a structured lifecycle:
**Discuss & Spec → Plan Roadmap → Execute Atomic Phases → Verify & Update State**.

---

## The GSD Core Principles

1. **Context Isolation**: Keep sessions lean. Write specifications and state to persistent markdown files so each step can start with a fresh, focused context.
2. **Spec-First**: Never write code before writing the specification and agreeing on the acceptance criteria.
3. **Atomic Execution**: Break epics into phases, and phases into small, verifiable tasks (1–3 files per task).
4. **Persistent State**: Maintain living state files (`STATE.md`, `ROADMAP.md`, `REQUIREMENTS.md`) in a `.gsd/` folder at the workspace root.

---

## Step-by-Step Workflow

### Phase 1: Specification (`.gsd/REQUIREMENTS.md`)
Before touching code, clarify and document the exact requirements:
- **Problem Statement**: What problem are we solving?
- **User Stories / Acceptance Criteria**: Specific, testable criteria for success.
- **Constraints & Edge Cases**: Performance constraints, security requirements, environment limits.

### Phase 2: Architecture & Roadmap (`.gsd/ROADMAP.md`)
Divide the feature into distinct, logical phases:
- **Phase 1**: Foundations & Data Models / Schemas
- **Phase 2**: Core Logic / Backend Services
- **Phase 3**: Integrations / UI / API endpoints
- **Phase 4**: Tests, Error Handling & Polish

Each phase must list concrete deliverables with checkboxes:
```markdown
- [ ] Phase 1: Foundation
  - [ ] Task 1.1: Create data schemas
  - [ ] Task 1.2: Add unit tests for schema validation
```

### Phase 3: State Tracking (`.gsd/STATE.md`)
Record the active status of the project:
```markdown
# GSD Project State
- **Current Phase**: Phase 2 (Core Logic)
- **Active Task**: Task 2.1 - Implement parser
- **Recent Blockers**: None
- **Next Up**: Task 2.2 - Add integration tests
```

### Phase 4: Atomic Task Execution & Verification
For each task in the active phase:
1. Load only the relevant source files and specs.
2. Implement the changes with precision.
3. **Verify immediately**: Run linters, unit tests, or build commands (`npm test`, `pytest`, `cargo test`, etc.).
4. Mark the task complete in `ROADMAP.md` and update `STATE.md`.
5. Proceed to the next task with a clean slate.

---

## When to Activate GSD
Activate this skill whenever:
- Starting a non-trivial feature or greenfield project.
- The user requests `/plan` or structured project management.
- A project is complex enough to span multiple sessions or subagents.

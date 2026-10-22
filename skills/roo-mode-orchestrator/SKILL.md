---
name: roo-mode-orchestrator
description: >-
  Multi-model role-based coding orchestrator inspired by Roo Code. Use this skill when
  the user asks to switch between specialized modes (Architect, Code, Debug, Ask, Review),
  requests multi-model AI coding workflows, or wants to delegate tasks to subagents
  with tailored model roles.
---

# 🤖 Roo Mode Orchestrator — Multi-Model AI Coding

Inspired by **Roo Code**'s signature multi-model and mode-switching architecture, this skill equips Antigravity to operate across specialized operational personas: **Architect**, **Code**, **Debug**, and **Ask**.

By switching personas and delegating to specialized subagents with appropriate model tiers (`pro` for deep reasoning, `flash` for fast targeted edits and research, `flash_lite` for quick checks), complex development tasks are handled with optimal accuracy, speed, and cost efficiency.

---

## The 4 Roo Modes

### 1. 📐 Architect Mode
- **Focus**: High-level design, system architecture, API contracts, tech stack selection, and planning.
- **Behavior**:
  - Does **NOT** immediately jump into file editing or writing implementation code.
  - Asks clarifying questions to understand constraints and requirements.
  - Proposes architectural blueprints, system diagrams, and sequence specifications.
- **Recommended Model / Subagent**: High-reasoning model tier (`pro`).

### 2. 💻 Code Mode
- **Focus**: Implementation, refactoring, writing unit tests, and executing changes.
- **Behavior**:
  - Implements specifications created in Architect mode.
  - Reads existing patterns in the codebase and maintains style consistency.
  - Executes unit tests and verification steps after modifying files.
- **Recommended Model / Subagent**: Balanced coding model (`pro` or `flash` depending on complexity).

### 3. 🔍 Debug Mode
- **Focus**: Root cause analysis, diagnostics, bug fixing, and regression prevention.
- **Behavior**:
  - Collects stack traces, logs, and error messages.
  - Identifies minimal reproducible test cases.
  - Isolates root cause before proposing fixes; tests fixes to ensure zero regressions.
- **Recommended Model / Subagent**: Deep reasoning model (`pro`).

### 4. 💬 Ask / Explore Mode
- **Focus**: Codebase exploration, concept explanation, documentation lookup, and Q&A.
- **Behavior**:
  - Read-only: Does **NOT** modify project files or run mutating commands.
  - Explains how modules interact, traces data flow, and summarizes complex logic.
- **Recommended Model / Subagent**: Fast search & lookup subagent (`flash` / `research`).

---

## Mode Switching & Delegation Protocol

When a user prompt indicates a specific mode, or when orchestrating a complex task:
1. **Identify the Required Mode**:
   - High-level planning or refactoring plan → **Architect**
   - Direct feature building or task execution → **Code**
   - Error investigation or test failure → **Debug**
   - Questions about logic or architecture → **Ask**
2. **Execute within Persona Constraints**:
   - Honor the mode boundaries (e.g. Architect plans before Code edits).
3. **Subagent Delegation**:
   - Use `invoke_subagent` to spawn specialized subagents tailored to the mode (e.g., a `research` subagent in Ask mode, or a `pro` subagent in Architect mode).

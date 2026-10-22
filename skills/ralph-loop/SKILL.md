---
name: ralph-loop
description: >-
  Autonomous long-running agent execution loop based on the Ralph Wiggum continuous
  iteration pattern. Use this skill when the user asks for unattended, persistent task
  execution, overnight coding runs, automated test-driven problem solving, or continuous
  looping until all acceptance criteria/tests pass.
---

# 🔁 Ralph Loop — Autonomous Long-Running Agent Loops

The **Ralph Loop** (named after Ralph Wiggum's persistent iterative mindset) is an autonomous orchestration pattern where an AI agent works continuously through a task queue or test suite until a clear completion condition is reached.

Instead of stopping after one turn and requiring human intervention, a Ralph Loop maintains momentum by running an autonomous iteration cycle:
**Inspect State → Pick Next Task → Execute → Verify (Tests/Build) → Checkpoint → Repeat**.

---

## Core Mechanics

1. **Strict Completion Criteria**: The loop must have a definite exit condition (e.g., all tests pass, build succeeds, or all items in a backlog checklist are checked off).
2. **Clean-Context Iterations**: Prevent context saturation by keeping each loop iteration focused on a single atomic issue.
3. **Automated Verification**: Every iteration must run automated verification commands (e.g. `npm test`, `pytest`, compiler checks). If tests fail, the failure output becomes the prompt for the next cycle.
4. **Safety & Circuit Breakers**:
   - Maximum iteration cap (e.g., 10–20 iterations max).
   - Early exit if the same error repeats 3 times without progress.

---

## Operating Procedure

### Step 1: Define the Objective & Test Suite
Establish the exact success predicate:
```bash
# Example verification commands
npm test
pytest tests/
cargo test
```
Or define a structured task queue in a file like `TASKS.md`:
```markdown
- [x] Fix user authentication edge case
- [ ] Add rate limiter middleware
- [ ] Add unit tests for payment webhook
```

### Step 2: The Autonomous Cycle
In each cycle of the Ralph Loop:
1. **Read Status**: Run the test suite or inspect the backlog.
   - If all criteria are met (all tests pass, 0 pending tasks): **Terminate loop and declare SUCCESS**.
   - If tests fail or tasks remain: Identify the **single highest-priority failing item**.
2. **Execute Targeted Fix**:
   - Locate the root cause.
   - Edit the necessary files.
3. **Verify**:
   - Rerun the verification command.
   - Check if the fix worked or if regressions occurred.
4. **Checkpoint**:
   - Log progress (e.g., in a session log or git commit: `git commit -m "fix(auth): pass test_token_expiration"`).
5. **Next Turn**:
   - Transition to the next failing test or task without pausing for user intervention unless a blocker or ambiguity arises.

---

## Ralph Loop Helper Scripts

For standalone terminal execution, a bash or PowerShell wrapper can automate agent invocations:

### PowerShell (`scripts/ralph_loop.ps1`):
```powershell
param(
    [string]$TestCommand = "npm test",
    [int]$MaxIterations = 15
)

$iteration = 0
while ($iteration -lt $MaxIterations) {
    $iteration++
    Write-Host "=== Ralph Loop Iteration $iteration / $MaxIterations ===" -ForegroundColor Cyan
    Invoke-Expression $TestCommand
    if ($LASTEXITCODE -eq 0) {
        Write-Host "All tests passed! Ralph Loop completed successfully." -ForegroundColor Green
        break
    }
    Write-Host "Tests failed. Invoking agent to fix failing test..." -ForegroundColor Yellow
    # Trigger next iteration
}
```

---

## Antigravity Native Integration

In Antigravity, Ralph Loops can be run using:
- **`/goal` slash command**: For overnight or long-running goals where the agent is instructed to persevere until tests pass.
- **Autonomous Subagents**: Launching a dedicated subagent (`self` or `research`) to grind through a test suite in the background.
- **`schedule` tool**: Running recurring health/test checks until all tasks complete.

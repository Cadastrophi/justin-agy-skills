---
name: coderabbit-review
description: >-
  AI-powered, high-signal automated code review skill inspired by CodeRabbit. Use this
  skill when the user asks for a code review, pull request analysis, security audit,
  diff inspection, or comprehensive quality check on changes or files.
---

# 🐰 CodeRabbit Code Review — High-Signal Automated Reviews

The **CodeRabbit Review Skill** brings automated, thorough, multi-pass code reviews directly into Antigravity. It evaluates code changes not just for syntax, but for security, performance, logic correctness, architectural integrity, and test coverage.

---

## Review Objectives

1. **High Signal-to-Noise**: Avoid pedantic nitpicks about formatting (leave that to formatters). Focus on genuine bugs, logic flaws, security vulnerabilities, edge cases, and architectural regressions.
2. **Context-Aware**: Understand how the modified code interacts with the rest of the codebase and project conventions.
3. **Actionable Suggestions**: Provide concrete replacement code diffs or examples for every flagged issue.

---

## The 4-Pass Review Methodology

When reviewing a diff, branch, or file, follow this 4-pass sequence:

### Pass 1: High-Level Summary & Walkthrough
- **Overview**: Summarize the intent and functional scope of the changes in 2–3 sentences.
- **Key Files Modified**: Highlight the core components affected.
- **Architecture Impact**: Flag any architectural boundary violations or unexpected couplings.

### Pass 2: Security & Vulnerability Analysis
Check specifically for:
- Injection flaws (SQLi, Command Injection, XSS, Template injection).
- Authentication, authorization, and permission bypasses.
- Hardcoded secrets, API keys, or sensitive credentials.
- Unsanitized inputs and unsafe deserialization.
- Denial of Service (DoS) vectors (unbounded loops, regex denial of service, memory leaks).

### Pass 3: Logic, Performance & Edge Cases
Examine line-by-line for:
- **Race conditions & concurrency**: Missing locks, unhandled async promises, thread-safety.
- **Off-by-one errors & boundary checks**: Array indexing, null/undefined dereferencing, empty collections.
- **Resource leaks**: Unclosed file handles, database connections, streams.
- **Performance bottlenecks**: N+1 queries, unnecessary re-renders, heavy operations inside hot loops.
- **Error handling**: Swallowed exceptions, missing fallbacks, unclear error messages.

### Pass 4: Verification & Test Coverage
- Are critical paths covered by automated tests?
- Are edge cases (empty states, network timeouts, invalid inputs) tested?
- Are there breaking API changes that require documentation or migration updates?

---

## Output Format

Present the review in a clean, structured report:

```markdown
## 🐰 Code Review Summary
[Concise summary of changes and overall quality verdict: LGTM / Request Changes / Needs Discussion]

### 🔴 Critical / High Severity Issues
- **[File:Line]**: Issue description.
  - **Risk**: Why this is dangerous.
  - **Recommendation**: Exact code fix.

### 🟡 Medium / Minor Improvements
- **[File:Line]**: Performance or edge case observation.
  - **Suggested Fix**: ...

### 🟢 Commendations & Best Practices
- Highlight clean, elegant, or well-tested solutions.

### 📋 Verification Checklist
- [ ] Unit tests added / updated
- [ ] No secret leaks
- [ ] Backward compatibility preserved
```

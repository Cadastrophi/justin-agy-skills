# Justin Antigravity Skills

A small skill set for learning agentic engineering in Antigravity. The skills
follow one workflow: grill the idea, write down the intent, turn it into a
spec, design it, build it in a loop, verify it, and debug it when it breaks.
The full personal catalog lives in
[justin-skills](https://github.com/Cadastrophi/justin-skills).

## Install

### Ask Antigravity to do it

Paste this into an Antigravity conversation:

```text
Install the agent skills from https://github.com/Cadastrophi/justin-agy-skills
for Antigravity by following the "For agents" steps in its README, then list
what you installed.
```

A skill is a set of instructions written by someone else. Skim a skill's
`SKILL.md` before you rely on it.

### For agents

1. Clone `https://github.com/Cadastrophi/justin-agy-skills` into a temporary
   folder.
2. Copy every folder inside its `skills/` folder into Antigravity's global
   skills folder, `~/.gemini/config/skills/` (on Windows,
   `%USERPROFILE%\.gemini\config\skills\`). Create the folder if it does not
   exist. Replace any folder with the same name.
3. Delete the temporary clone.
4. List the installed skill names and tell the user to start a new
   conversation so Antigravity loads them.

### By hand

Copy the folders in `skills/` into `~/.gemini/config/skills/` yourself. To
install into one project only, copy them into `<project>/.agents/skills/`
instead.

## Skills

| Stage | Skills |
| --- | --- |
| Grill and intent | `grilling`, `grill-with-docs`, `domain-modeling` |
| Spec | `to-spec`, `setup-matt-pocock-skills` |
| Build loop | `ralph-loop`, `tdd` |
| Research | `research` |
| Debugging and decisions | `diagnosing-bugs`, `agent-introspection-debugging`, `council` |
| Design | `impeccable`, `justin-design`, `frontend-design-direction`, `make-interfaces-feel-better`, `design-taste-frontend`, `apple-design`, `emil-design-eng` |
| Motion | `animate`, `improve-animations`, `review-animations`, `pick-ui-library`, `emil-ui-prototype` |
| Verify and security | `browser-qa`, `coderabbit-review`, `security-audit` |
| Writing | `humanizer`, `unslop` |
| Skill finder | `find-skills` |

`research` is a skill. Antigravity also has a built-in `research` subagent,
which is a separate thing.

`coderabbit-review` does not call the CodeRabbit service. It is a free,
prompt-only four-pass review checklist modeled on CodeRabbit's review style,
and is this repo's only general code-review skill.

Sources and licenses are listed in [SOURCES.md](SOURCES.md).

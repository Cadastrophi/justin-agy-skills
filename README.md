# Justin Antigravity Skills

A small skill set for learning agentic engineering in Antigravity. The skills
follow one workflow: grill the idea until the intent is written down in
PRODUCT.md, build it in a loop until every "Done when" box is ticked, and
debug it when it breaks. The full personal catalog lives in
[justin-skills](https://github.com/Cadastrophi/justin-skills).

## Workshop

[`workshop/agentic-engineering-deck.html`](workshop/agentic-engineering-deck.html)
is the slide deck for the workshop, and doubles as a manual. Download it and
open it in any browser; it is one self-contained file that also works offline.

- **Contents:** press `C` on any slide, or use the ☰ Contents link.
- **Prompts:** every box with a blue top bar is a prompt, with a Copy button.
  The whole method is two prompts: `/grill-with-docs`, then `/ralph-loop`.
- **Skill reference:** the last slides list all 29 skills and when to use each.
- **Keys:** arrow keys to move, `N` for presenter notes, `F` for fullscreen.

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

## Going further

- `to-spec` turns an agreed intent into a full spec for bigger projects. It
  runs `setup-matt-pocock-skills` the first time; choose local markdown if you
  don't use an issue tracker.
- [mattpocock/skills](https://github.com/mattpocock/skills): the source of
  the grilling, spec, TDD and debugging skills here, plus many more for
  planning and refactoring larger codebases.
- [poteto's pstack](https://github.com/cursor/plugins/tree/main/pstack) (in
  Cursor's plugins repo): engineering principles written as skills, such as
  `principle-prove-it-works`, `principle-guard-the-context-window` and
  `principle-fix-root-causes`, plus workflows like `interrogate` and `swarm`.

Sources and licenses are listed in [SOURCES.md](SOURCES.md).

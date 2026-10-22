# Justin Antigravity Skills

A curated skill set for Antigravity: engineering workflow, agent debugging,
and design. The full personal catalog lives in
[justin-skills](https://github.com/Cadastrophi/justin-skills); this repo is
the smaller set worth loading into Antigravity.

## Install

Clone once, outside any scanned skills folder, then link the skills into
Antigravity's skill folder (`~/.gemini/config/skills`):

```sh
# Windows (creates junctions)
.\install.ps1

# macOS / Linux (creates symlinks)
./install.sh
```

Re-run after adding skills; existing links pick up `git pull` changes
automatically. If a skill already exists in the target as a real folder, the
installer skips it and reports `CONFLICT`. Pass `-Replace` / `--replace` to
move the old copy to `~/.justin-agy-skills/backups/` and link this repo's
version instead.

## Skills

| Group | Skills |
| --- | --- |
| Antigravity workflows | `gsd`, `ralph-loop`, `roo-mode-orchestrator`, `coderabbit-review` |
| TDD and grilling | `tdd`, `grilling`, `grill-with-docs` |
| Matt Pocock engineering | `code-review`, `codebase-design`, `diagnosing-bugs`, `domain-modeling`, `handoff`, `improve-codebase-architecture`, `prototype`, `research`, `resolving-merge-conflicts`, `setup-matt-pocock-skills`, `to-spec`, `to-tickets`, `triage`, `wait-what`, `wizard`, `writing-for-agents` |
| Skill finder | `find-skills` |
| Agent debugging and council | `agent-introspection-debugging`, `council` |
| Emil Kowalski design and motion | `animate`, `animation-vocabulary`, `apple-design`, `ask-sonner`, `emil-design-eng`, `emil-ui-prototype`, `find-animation-opportunities`, `improve-animations`, `pick-ui-library`, `review-animations` |
| Taste | `design-taste-frontend`, `gpt-taste`, `high-end-visual-design`, `stitch-design-taste`, `minimalist-ui`, `industrial-brutalist-ui`, `redesign-existing-projects`, `image-to-code`, `full-output-enforcement` |
| UI/UX systems | `ui-ux-pro-max`, `ui-styling`, `design-system`, `design` |
| Frontend design and polish | `frontend-design-direction`, `justin-design`, `impeccable`, `make-interfaces-feel-better`, `frontend-a11y`, `mobile-native`, `animation-performance`, `break-ui` |
| Browser verification | `browser-qa` |

`coderabbit-review` does not call the CodeRabbit service. It is a free,
prompt-only four-pass review checklist modeled on CodeRabbit's review style.

Sources and licenses are listed in [SOURCES.md](SOURCES.md).

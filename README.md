# Justin Antigravity Skills

A curated skill set for Antigravity: engineering workflow, agent debugging,
and design. The full personal catalog lives in
[justin-skills](https://github.com/Cadastrophi/justin-skills); this repo is
the smaller set worth loading into Antigravity.

## Install

Install with the [Skills CLI](https://github.com/vercel-labs/skills) on
Windows, macOS, or Linux (Node.js required):

```sh
npx skills add Cadastrophi/justin-agy-skills -g -a antigravity -s '*' -y --copy
```

This copies every skill into `~/.agents/skills`. Drop `-s '*'` to pick skills
interactively, or pass names such as `-s tdd grilling`. Update later with
`npx skills update -g`.

The repository is private, so the machine needs GitHub access to it first
(for example `gh auth login`).

## Skills

| Group | Skills |
| --- | --- |
| Antigravity workflows | `gsd`, `ralph-loop`, `roo-mode-orchestrator`, `coderabbit-review` |
| TDD and grilling | `tdd`, `grilling`, `grill-with-docs` |
| Matt Pocock engineering | `codebase-design`, `diagnosing-bugs`, `domain-modeling`, `handoff`, `improve-codebase-architecture`, `prototype`, `research`, `resolving-merge-conflicts`, `setup-matt-pocock-skills`, `to-spec`, `to-tickets`, `triage`, `wait-what`, `wizard`, `writing-for-agents` |
| Skill finder | `find-skills` |
| Agent debugging and council | `agent-introspection-debugging`, `council` |
| Emil Kowalski design and motion | `animate`, `animation-vocabulary`, `apple-design`, `ask-sonner`, `emil-design-eng`, `emil-ui-prototype`, `find-animation-opportunities`, `improve-animations`, `pick-ui-library`, `review-animations` |
| Motion implementation (React / Next.js) | `motion-foundations`, `motion-patterns`, `motion-advanced` |
| Taste | `design-taste-frontend`, `high-end-visual-design`, `stitch-design-taste`, `minimalist-ui`, `industrial-brutalist-ui`, `redesign-existing-projects`, `image-to-code`, `full-output-enforcement` |
| UI/UX systems | `ui-ux-pro-max`, `ui-styling`, `design-system`, `design` |
| Frontend design and polish | `frontend-design-direction`, `justin-design`, `impeccable`, `make-interfaces-feel-better`, `frontend-a11y`, `mobile-native`, `animation-performance`, `break-ui` |
| Security | `security-audit` (Cloudflare) |
| Browser verification | `browser-qa` |

`coderabbit-review` does not call the CodeRabbit service. It is a free,
prompt-only four-pass review checklist modeled on CodeRabbit's review style,
and is this repo's only general code-review skill.

Sources and licenses are listed in [SOURCES.md](SOURCES.md).

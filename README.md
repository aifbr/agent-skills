# AIFBR Agent Skills

Skills públicas para agentes de IA usados em fluxos AIFBR.

## Instalar

Uma skill:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- prd-creator
```

Todas:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- --all
```

Destino padrão:

```txt
~/.codex/skills
```

Destino customizado:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- prd-creator --target ~/.claude/skills
```

## Skills

- `prd-creator`: transforma ideia aberta em PRD.
- `to-prd`: sintetiza contexto já decidido em PRD.
- `to-issues`: quebra plano em issues pequenas.
- `grill-me-with-docs`: desafia plano contra docs e decisões.
- `humanizer`: revisa texto para tirar cara de IA.
- `diagnose`: diagnostica bugs com ciclo reproduzível.

## Créditos

| Skill | Créditos |
| --- | --- |
| `prd-creator` | Bruno Gonzaga / AIFBR: criação, curadoria e adaptação pública. |
| `to-prd` | [Matt Pocock Skills](https://github.com/mattpocock/skills): base conceitual; AIFBR: adaptação pública e instalação. |
| `to-issues` | [Matt Pocock Skills](https://github.com/mattpocock/skills): base conceitual; AIFBR: adaptação pública e instalação. |
| `grill-me-with-docs` | [Matt Pocock Skills](https://github.com/mattpocock/skills): base conceitual do fluxo `grill-with-docs`; AIFBR: adaptação pública e instalação. |
| `humanizer` | [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing), mantido pelo WikiProject AI Cleanup: guia-base; AIFBR: adaptação pública e instalação. |
| `diagnose` | [Matt Pocock Skills](https://github.com/mattpocock/skills): base conceitual do fluxo de diagnóstico; AIFBR: adaptação pública e instalação. |

## Uso

Depois de instalar, abra uma nova sessão do agente se a skill não aparecer imediatamente.

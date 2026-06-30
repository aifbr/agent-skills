# AIFBR Agent Skills

Skills publicas para agentes de IA usados em fluxos AIFBR.

## Instalar

Uma skill:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- prd-creator
```

Todas:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- --all
```

Destino padrao:

```txt
~/.codex/skills
```

Destino customizado:

```bash
curl -fsSL https://raw.githubusercontent.com/aifbr/agent-skills/main/install.sh | bash -s -- prd-creator --target ~/.claude/skills
```

## Skills

- `prd-creator`: transforma ideia aberta em PRD.
- `to-prd`: sintetiza contexto ja decidido em PRD.
- `to-issues`: quebra plano em issues pequenas.
- `grill-me-with-docs`: desafia plano contra docs e decisoes.
- `humanizer`: revisa texto para tirar cara de IA.
- `diagnose`: diagnostica bugs com ciclo reproduzivel.

## Uso

Depois de instalar, abra uma nova sessao do agente se a skill nao aparecer imediatamente.

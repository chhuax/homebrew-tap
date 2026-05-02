# homebrew-tap

Homebrew tap for PrismTrace.

## Install

```bash
brew install chhuax/tap/prismtrace
```

Or tap first:

```bash
brew tap chhuax/tap
brew install prismtrace
```

## Use

Run commands from the workspace you want PrismTrace to observe:

```bash
cd /path/to/your/project
prismtrace --discover
prismtrace --console
```

Open the console at `http://127.0.0.1:7799`.

Observer commands:

```bash
prismtrace --codex-observe
prismtrace --claude-observe
prismtrace --opencode-observe
```

opencode defaults to `http://127.0.0.1:4096`; pass a custom URL when needed:

```bash
prismtrace --opencode-observe --opencode-url http://127.0.0.1:4096
```

PrismTrace writes local state under `.prismtrace/state/` in the current workspace.

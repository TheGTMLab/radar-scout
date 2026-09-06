# Radar Scout

Internal content-reconnaissance workflow that collects high-signal GTM content from Reddit, X, LinkedIn, and TikTok; extracts transferable content mechanics with an LLM; and saves research records to a Notion database.

## Structure

- `n8n/` — n8n workflow JSON scaffolds
- `prompts/` — LLM prompt definitions
- `docs/` — Notion schema and roadmap

## Getting Started

1. Import `n8n/radar-scout-mvp.json` into n8n (manual import).
2. Configure the HTTP Request node with your OpenRouter endpoint and API key.
3. Configure the Notion node with your database ID and credentials.
4. Review `prompts/signal-analysis.md` and adjust to taste.

## Security

No API keys, tokens, passwords, or credentials are stored in this repository. All secrets must be supplied via n8n credentials or environment variables.
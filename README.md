# Radar Scout

Internal content-reconnaissance workflow that collects high-signal GTM content from Reddit, X, LinkedIn, and TikTok; extracts transferable content mechanics with an LLM; and saves research records to a Notion database.

## Structure

- `n8n/` — n8n workflow JSON scaffolds
- `prompts/` — LLM prompt definitions
- `docs/` — Notion schema and roadmap

## Setup Checklist

After importing the workflow into n8n Cloud, create and attach the required credentials manually in n8n. Credentials, API keys, OAuth tokens, Notion integration tokens, and database IDs are intentionally not included in this repository or in the workflow export.

1. Import `n8n/radar-scout-mvp.json` into n8n Cloud.
2. Create or connect the Notion credential manually.
3. Create the OpenRouter HTTP Header Auth credential manually.
4. Configure the Notion database and replace `PLACEHOLDER_DATABASE_ID`.
5. Run the mock workflow before adding a live collection source.

## Security

No API keys, tokens, passwords, or credentials are stored in this repository. All secrets must be supplied via n8n credentials or environment variables.
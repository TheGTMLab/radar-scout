# Radar Scout Roadmap

## Phase 1 — MVP (current)
- Manual trigger
- Single-source mock pipeline (Reddit → OpenRouter → Notion)
- Basic signal extraction prompt
- Save to Notion database
- Manual n8n Cloud credential setup:
  1. Create Notion API credential with integration token
  2. Create OpenRouter HTTP Header Auth credential with API key
  3. Attach credentials to respective workflow nodes
  4. Replace `PLACEHOLDER_DATABASE_ID` with actual Notion database ID
  5. Run mock workflow before connecting live sources

## Phase 2 — Multi-source
- Add X, LinkedIn, TikTok connectors
- Rate limiting and retry logic
- Source-specific filtering rules

## Phase 3 — Automation
- Scheduled runs (cron)
- Deduplication by URL
- Auto-classification confidence scoring

## Phase 4 — Enrichment
- Sentiment analysis
- Competitor mention tracking
- Trend scoring over time
- Export to CSV / Airtable / Google Sheets
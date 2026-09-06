# n8n Cloud — Manual Credential Setup

This document covers the manual credential setup required after importing `n8n/radar-scout-mvp.json` into n8n Cloud. No credentials or secrets are stored in this repository.

## Prerequisites

Before configuring credentials, you'll need the following from each provider:

- **Notion** — Integration token and target database ID
- **OpenRouter** — API key

## Step 1: Create the Notion Credential

1. In n8n Cloud, navigate to **Settings → Credentials**.
2. Click **Create credential** and search for **Notion**.
3. Select the **Notion API** credential type.
4. Enter your Notion integration token (starts with `ntb_`).
5. Save the credential.

### Get a Notion Integration Token

1. Go to [Notion Integrations](https://www.notion.so/my-integrations).
2. Click **New integration**.
3. Select the workspace and copy the internal integration token.
4. Share the target database with the integration (via **Invite** in the database settings).

### Get the Database ID

1. Open the target Notion database in your browser.
2. The URL contains the database ID: `https://www.notion.so/{workspace}/{database-id}`.
3. Copy the ID and replace `PLACEHOLDER_DATABASE_ID` in the **Notion -- Create Signal** node.

## Step 2: Create the OpenRouter HTTP Header Auth Credential

1. In n8n Cloud, navigate to **Settings → Credentials**.
2. Click **Create credential** and search for **HTTP Header Auth**.
3. Name it `OpenRouter API`.
4. Set the header name to `Authorization`.
5. Set the header value to `Bearer <your-openrouter-api-key>`.
6. Save the credential.

### Get an OpenRouter API Key

1. Go to [OpenRouter](https://openrouter.ai/keys).
2. Copy your API key.
3. Paste it into the credential header value.

## Step 3: Attach Credentials to the Workflow

After creating credentials in n8n Cloud, attach them to the workflow nodes:

| Node | Credential Type |
|------|----------------|
| **OpenRouter -- Analyze Signal** | HTTP Header Auth (`OpenRouter API`) |
| **Notion -- Create Signal** | Notion API |

1. Open the workflow in n8n Cloud.
2. Click each node and select the credential from the **Credential** dropdown.
3. Replace `PLACEHOLDER_DATABASE_ID` in the Notion node parameters with your actual database ID.

## Step 4: Verify with the Mock Workflow

1. Run the workflow using the **Manual Trigger**.
2. Confirm the **Mock Source Post** node produces the expected JSON output.
3. Verify the **Notion -- Create Signal** node creates a record in your database.

Only after successful verification should you replace the mock data with a live collection source.

## Security Notes

- Never commit credentials to this repository.
- Use n8n Cloud credential management — not environment variables — for production workflows.
- Rotate integration tokens and API keys periodically.

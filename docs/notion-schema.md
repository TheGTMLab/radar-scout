# Notion Schema — Radar Scout Signals

Database name: **Radar Scout Signals**

## Properties

| Property | Type | Notes |
|----------|------|-------|
| Name | Title | Signal title or short description |
| Source | Select | Reddit, X, LinkedIn, TikTok |
| URL | URL | Original post URL |
| Author | Text | Handle or username |
| Posted At | Date | When the signal was published |
| Signal Type | Select | Question, Stat, Story, Framework, Hook, Trend, Pain Point |
| Mechanic | Text | Transferable content mechanic extracted by LLM |
| Why It Works | Text | Brief rationale from analysis |
| Relevance | Select | High, Medium, Low |
| Status | Select | New, Reviewed, Adapted, Archived |
| Notes | Text | Free-form research notes |

## Relations

- None required for MVP.

## Views

- Table: all signals, sorted by Posted At (newest first)
- Board: grouped by Status
- Calendar: by Posted At
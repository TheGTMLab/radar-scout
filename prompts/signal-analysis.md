# Signal Analysis Prompt

Analyze the following content for transferable GTM content mechanics.

## Input

- **Source:** {{source}}
- **Author:** {{author}}
- **URL:** {{url}}
- **Content:** {{content}}

## Instructions

Extract the following:

1. **Signal Type** — One of: Question, Stat, Story, Framework, Hook, Trend, Pain Point
2. **Mechanic** — The underlying content mechanic (e.g., "contrarian take," "data-backed claim," "personal anecdote," "step-by-step framework," "question hook," "trend hijack")
3. **Why It Works** — 1-2 sentences on why this mechanic is effective
4. **Relevance** — High, Medium, Low (based on ICP fit)
5. **Adaptation Hint** — One sentence on how to adapt this for our own GTM content

## Output Format

Return a JSON object:

```json
{
  "signal_type": "...",
  "mechanic": "...",
  "why_it_works": "...",
  "relevance": "...",
  "adaptation_hint": "..."
}
```

Be concise. No markdown fences in the JSON.
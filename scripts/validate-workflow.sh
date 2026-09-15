#!/usr/bin/env bash
set -euo pipefail

workflow="${1:?Usage: scripts/validate-workflow.sh PATH_TO_WORKFLOW_JSON}"

python3 -m json.tool "$workflow" >/dev/null

python3 - "$workflow" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, encoding="utf-8") as f:
    workflow = json.load(f)

nodes = workflow.get("nodes", [])
connections = workflow.get("connections", {})

if not workflow.get("name"):
    raise SystemExit("ERROR: workflow has no name")

if not nodes:
    raise SystemExit("ERROR: workflow has no nodes")

names = [node.get("name", "") for node in nodes]
if len(names) != len(set(names)):
    raise SystemExit("ERROR: duplicate node names found")

print(f"VALID: {workflow['name']}")
print(f"NODES: {len(nodes)}")
print(f"CONNECTION SOURCES: {len(connections)}")
for name in names:
    print(f"- {name}")
PY

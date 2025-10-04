# Installation

This repository ships **docs and specs** only.

1. Clone or create your repo and copy this structure.
2. Place your MCP server implementation in a separate package/repo.
3. Wire your server to call the Lookin'Body Web API using headers `Account` and `API-KEY`.
4. Keep secrets in environment variables (e.g., `INBODY_ACCOUNT`, `INBODY_API_KEY`).

> Optional: add a `.devcontainer/` if you plan to work inside a containerized dev env.

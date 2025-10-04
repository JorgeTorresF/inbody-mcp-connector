# Security Policy

## Supported Scope
This repository contains **documentation and specifications** to build an MCP server for InBody Lookin'Body Web API.
- Do not include production credentials or PHI/PII in issues or PRs.
- Treat any sample data as synthetic.

## Reporting a Vulnerability
Please open a **private security advisory** via GitHub Security Advisories (preferred) or contact the maintainers directly.
We follow **coordinated disclosure**: we will validate, prepare a fix/update to the docs/specs if needed, and then publish.

## Secrets Management
- Never commit `API-KEY` or `Account` values.
- For CI, use **GitHub Actions Secrets**.
- For local dev, use environment variables and `.env` (which is ignored by `.gitignore`).

## Hardening Recommendations (for your MCP implementation)
- Enforce HTTPS and server-side storage of API keys.
- Rate limit upstream API calls to avoid quota exhaustion.
- Normalize timestamps (device local time → UTC) and store audit logs.
- Validate webhook origins if you add push flows (IP allowlist/signatures).

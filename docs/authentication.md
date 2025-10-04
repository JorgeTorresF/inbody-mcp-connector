# Authentication

All API requests must include headers:
- `Account`: your Lookin'Body Web account ID.
- `API-KEY`: your API key generated in the API portal.

Always send `Content-Type: application/json`.
Do not expose secrets in client-side code. Keep keys server-side.

# MCP Architecture

We expose two MCP tools:
- `getInBodyDataByUserToken(user_token, start_date?, end_date?)` → measurements list.
- `getInBodyDataByUserID(user_id, start_date?, end_date?)` → measurements list.

The server should:
1. Validate input.
2. Build the upstream JSON payload (UserToken vs UserID).
3. Call Web API with required headers.
4. Map upstream fields (e.g., WT→weight, PBF→body_fat_percentage).
5. Return normalized JSON to the MCP client.

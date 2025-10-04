# API Reference (Lookin'Body Web API)

> High-level reference for planning your MCP integration. Exact endpoint paths and payloads depend on your regional API portal.

## Health check
**POST** `/user/test`  
Headers: `Account`, `API-KEY`  
Body: `{}`  
Returns 200 with `{"success": true}` or similar.

## Query by UserToken (phone)
**POST** `/Function`  
Headers: `Account`, `API-KEY`  
Body example:
```json
{ "UserToken": "5551234567", "StartDate": "20240101", "EndDate": "20241231" }
```
Response: JSON list of measurements with fields such as `WT` (weight), `PBF`, `SMM`, `BMI`, etc.

## Query by UserID (local)
**POST** `/Function`  
Headers: `Account`, `API-KEY`  
Body example:
```json
{ "UserID": "john_doe_001" }
```

> Notes
- `UserToken` searches globally across connected locations; `UserID` searches in the current location.
- Timestamps are device-local; consider normalizing to UTC in your MCP.

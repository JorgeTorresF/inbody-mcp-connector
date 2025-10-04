# Examples

## cURL
```bash
curl -X POST "https://<region>.lookinbody.com/Function"   -H "Account: $INBODY_ACCOUNT"   -H "API-KEY: $INBODY_API_KEY"   -H "Content-Type: application/json"   -d '{"UserToken":"5551234567"}' | python -m json.tool
```

## Python (requests)
```python
import os, requests
url = "https://<region>.lookinbody.com/Function"
headers = {
  "Account": os.environ["INBODY_ACCOUNT"],
  "API-KEY": os.environ["INBODY_API_KEY"],
  "Content-Type": "application/json",
}
payload = {"UserToken": "5551234567"}
res = requests.post(url, json=payload, headers=headers, timeout=30)
print(res.status_code, res.json())
```

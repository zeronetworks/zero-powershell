### Example 1: Decode a token
```powershell
Read-ZNJWTtoken -token eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtOmI1NTM3ZGY1OTA4MDA2NDMzMDBjNjMxOWJkNWM2MDE4YjI1NDRhOWMiLCJuYW1lIjoiZmVmZXd3ZGUiLCJlaWQiOiJjZDM4NDQ3MC05MGRmLTQ2MTgtYjIxOS0xMDAzZjc2NjljZTIiLCJzY29wZSI6NSwiZV9uYW1lIjoiUG93ZXJzaGVsbFRlc3RpbmciLCJ2IjoxLCJpYXQiOjE3MjYwNzM2ODAsImV4cCI6MTc4OTE0NTY4MCwiYXVkIjoicG9ydGFsLnplcm9uZXR3b3Jrcy5jb20iLCJpc3MiOiJ6ZXJvbmV0d29ya3MuY29tL2FwaS92MS9hY2Nlc3MtdG9rZW4ifQ.fFT1_FyBpS7wdrcj-q56hPLPc8BnxYg6ezzVnkBlj-A26gGMQtxoBZn5zfkaqiEryfVyt8qZqRugxvAaK7MYEzJPsFDIrivROSYIWYQJhX2U3Dmi9UPs0ZP3L1jYHOlpYkaqUp0akEdxXpAZLvXN6ncEyWNq3U87ynNDOa5U6Pa8EHlLMk0DML213h6F-yrqRmPD-Z0ABkJv3DSgugBwphN-9R-Sn_P7s0Gd4m5PtNGyXpLygTUFSe-XJ9kQZcZ7Zza3VdeJg1-5xrZcXgmlA85X0rbTqzr15wkwKiT2nYfPgZ2b6pt_P2ztGITwlQnQt24gykEYD4_pAq_yAf7EDA
```

```output
sub    : m:b5537df590800643300c6319bd5c6018b2544a9c
name   : fefewwde
eid    : cd384470-90df-4618-b219-1003f7669ce2
scope  : 5
e_name : PowershellTesting
v      : 1
iat    : 1726073680
exp    : 1789145680
aud    : portal.zeronetworks.com
iss    : zeronetworks.com/api/v1/access-token
```

This cmdlet decodes a token.
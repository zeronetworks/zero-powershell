### Example 1: List outbound MFA polciies for a specific asset
```powershell
Get-ZNAssetsMfaOutboundPolicy -AssetId a:a:8ErCHXe8 -AddBuiltins
```

```output
SrcEntityInfos         SrcProcessNames SrcUserInfos DstEntityInfoName        DstPort DstProcessNames RuleDuration FallbackToLoggedOnUser MfaMethods
--------------         --------------- ------------ -----------------        ------- --------------- ------------ ---------------------- ----------
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 62425   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 1870    {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 38008   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 15344   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 52931   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 59623   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 21973   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 32797   {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 80,443  {*}             6            True                   {4}
{All protected assets} {*}             {Any user}   Protected OT/IoT devices 22      {*}             6            True                   {4}
```

This cmdlet lists outbound MFA policies for a specific asset.

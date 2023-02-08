### Example 1: Move a single OT/IoT asset to segmented
```powershell
Protect-ZNAssetsOt -Items "a:t:oOkjcyED"
```

```output

```

This cmdlet will move an OT/IoT asset from learning to segemented in the envrionment.

### Example 2: Move all OT/IoT to segmented
```powershell
Protect-ZNAssetsOT -Items ((Get-ZNAssetsOt).Id)
```

```output

```

This sample will move all assets currently in learning to segmented.
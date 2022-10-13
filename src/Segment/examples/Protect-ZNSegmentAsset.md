### Example 1: Move a single asset to segmented
```powershell
Protect-ZNSegmentAsset -Items "a:a:ZgBWOMyc"
```

```output

```

This cmdlet will move an asset from learning to segemented in the envrionment.

### Example 2: Move all assets in learning to segmented
```powershell
Protect-ZNSegmentAsset -Items ((Get-ZNSegmentAssetsQueued).Items.Id)
```

```output

```

This sample will move all assets currently in learning to segmented.


### Example 1: List exclusion candidates for AT settings
```powershell
(Get-ZNAiExclusionSourceCandidate).Items
```

```output
AssetType Domain Id           Name        ProtectionState
--------- ------ --           ----        ---------------
0                a:l:K5ZTGaUI linux61067  1
0                a:l:i3MbKT4B linux456156 1
0                a:l:Bn5E1jNy linux908049 1
0                a:l:PRsv0HXF linux982753 1
0                a:l:Nhu8SvSE linux294710 1
0                a:l:goXZ3fpT Linux1      1
0                a:l:jnf66dVn Linux3      1
0                a:l:hC8rOTo0 Linux0      1
0                a:l:WHtk9O7L Linux2      1
0                a:l:FB8CBey8 Linux10     1
```

This cmdlet will list candidates for AI exclusion sources.

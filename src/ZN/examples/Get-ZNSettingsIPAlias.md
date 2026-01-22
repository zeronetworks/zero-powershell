### Example 1: List IP aliases
```powershell
(Get-ZNSettingsIPAlias).Items
```

```output
Alias         : NewIpAlias
CreatedAt     : 1765466672902
CreatedById   : m:080b3a44fa9a5d27f2843819bc4687a4dca8f20e
CreatedByName : powershell-module-development
IP            : 1.1.1.26
Id            : e:i:ZocZFJ6s
UpdatedAt     : 
UpdatedById   : 
UpdatedByName : 

Alias         : NewIPAlias
CreatedAt     : 1765464092001
CreatedById   : 1f352ed0-86f1-454f-90a5-592c197c8000
CreatedByName : Zero Networks
IP            : 1.1.1.10
Id            : e:i:TgXxpb4l
UpdatedAt     : 
UpdatedById   : 
UpdatedByName : 
```

This cmdlet lists IP aliases.

### Example 2: Get IP Alias
```powershell
Get-ZNSettingsIPAlias -IPAliasId e:i:ZocZFJ6s
```

```output
CreatedById   : m:080b3a44fa9a5d27f2843819bc4687a4dca8f20e
CreatedByName : powershell-module-development
ItemAlias     : NewIpAlias
ItemCreatedAt : 1765466672902
ItemIP        : 1.1.1.26
ItemId        : e:i:ZocZFJ6s
ItemUpdatedAt : 
UpdatedById   : 
UpdatedByName : 
```

This cmdlet gets an IP alias.

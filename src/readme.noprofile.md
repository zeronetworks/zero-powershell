# Zero Networks PowerShell AutoRest Configuration

> Values
``` yaml
azure: false
powershell: true
help-link-prefix: https://github.com/
#license-header: MICROSOFT_MIT_NO_VERSION
#pwsh-license-header: MICROSOFT_APACHE_NO_VERSION
#branch: main
metadata:
  authors: Zero Networks
  owners: Zero Networks
  description: 'Zero Networks PowerShell cmdlets'
  #copyright: Microsoft Corporation. All rights reserved.
  tags: Zero Networks PSModule
  companyName: Zero Networks
  #requireLicenseAcceptance: true
  licenseUri: https://github.com/zeronetworks/zero-powershell/license.md
  projectUri: https://github.com/ZeroNetworks/zero-powershell
```

> Names
``` yaml
prefix: ZN
module-name: $(prefix).$(service-name)
namespace: ZeroNetworks.PowerShell.Cmdlets.$(service-name)
```

> Folders
``` yaml
clear-output-folder: true
output-folder: .
```

> Directives
``` yaml
directive:
  - where:
      subject: Operation
    hide: true
```
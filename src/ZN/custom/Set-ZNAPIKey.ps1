
<#
.Synopsis
Set the API key for use in all other cmdlets
.Description
Set the API key for use in all other cmdlets

#.Link
https://github.com/zeronetworks/zero-powershell/set-znapikey
#>
function Set-ZNApiKey {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # Api Key
        ${ApiKey}
    )

    process {
        CheckModuleLatest
        
        try {
            $env:ZNApiKey = $ApiKey
        }
        catch {
            throw
        }
    }
}
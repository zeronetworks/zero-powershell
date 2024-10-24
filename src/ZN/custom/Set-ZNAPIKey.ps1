
<#
.Synopsis
Set the API key for use in all other cmdlets
.Description
Set the API key for use in all other cmdlets

#.Link
https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/set-znapikey
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
            $decodedToken = Read-ZNJWTtoken $ApiKey
            $env:ZNAccountName = $decodedToken.aud.Split(".zeronetworks.com")[0]
            $ZNAccountName = $decodedToken.aud.Split(".zeronetworks.com")[0]
        }
        catch {
            throw
        }

        try {
            $env:ZNApiKey = $ApiKey
        }
        catch {
            throw
        }
    }
}
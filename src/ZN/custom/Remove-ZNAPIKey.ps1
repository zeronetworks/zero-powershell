
<#
.Synopsis
Deletes the API key
.Description
Deletes the API Key

#.Link
https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/remove-znapikey
#>
function Remove-ZNApiKey {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(

    )

    process {
        try {
            $env:ZNApiKey = ""
        }
        catch {
            throw
        }
    }
}
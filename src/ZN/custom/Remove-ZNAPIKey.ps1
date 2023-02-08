
<#
.Synopsis
Deletes the API key
.Description
Deletes the API Key

#.Link
https://github.com/zn/remove-znapikey
#>
function Remove-ZNApiKey {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # Api Key
        ${ApiKey}
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
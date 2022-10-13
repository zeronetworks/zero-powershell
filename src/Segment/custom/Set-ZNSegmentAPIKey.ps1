
<#
.Synopsis
Set the API key for use in all other cmdlets
.Description
Set the API key for use in all other cmdlets

#.Link
https://
#>
function Set-ZNSegmentApiKey {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # Api Key
        ${ApiKey}
    )

    process {
        try {
            $env:ZNSegmentApiKey = $ApiKey
        }
        catch {
            throw
        }
    }
}

<#
.Synopsis
Deletes the API key
.Description
Deletes the API Key

#.Link
https://
#>
function Remove-ZNSegmentApiKey {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # Api Key
        ${ApiKey}
    )

    process {
        try {
            $env:ZNSegmentApiKey = ""
        }
        catch {
            throw
        }
    }
}

<#
.Synopsis
List the Zero Networks environments
.Description
List the Zero Networks environments

#.Link
https://github.com/zeronetworks/zn.api/get-znenvironment
#>
function Get-ZNEnvironment {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(

    )

    process {
        $uri = "https://portal.zeronetworks.com/api/v1"

        $znHeaders = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
        $znHeaders.Add("Authorization",$env:ZNApiKey)
        $znHeaders.Add("Content-Type","application/json")
            
        try {
            $environments = Invoke-RestMethod -Uri "$uri/profile/environments" -Method GET -ContentType application/json -headers $znHeaders
        }
        catch {
            Write-Host "Unable to get environments" -ForegroundColor Red
            throw
        }
        
        return $environments.environments
    }
}

<#
.Synopsis
Change the Zero Networks environment token
.Description
Change the Zero Networks environment token

#.Link
https://github.com/zeronetworks/zero-powershell/switch-znenvironment
#>
function Switch-ZNEnvironment {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # EnvId
        ${EnvironmentId}
    )

    process {
        $uri = "https://portal.zeronetworks.com/api/v1"
            
        $znHeaders = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
        $znHeaders.Add("Authorization",$env:ZNApiKey)
        $znHeaders.Add("Content-Type","application/json")

        $body = @{
            "environmentId" = "$EnvironmentId"
        }
            
        try {
            $reponse = Invoke-RestMethod -Uri "$uri/profile/switch-env" -Method POST -ContentType application/json -headers $znHeaders -body ($body | ConvertTo-Json)
        }
        catch {
            Write-Host "Unable to switch environment" -ForegroundColor Red
            throw
        }
                
        $env:ZNApiKey = $response.token
    }
}
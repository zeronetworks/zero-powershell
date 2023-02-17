
<#
.Synopsis
Change the Zero Networks environment token
.Description
Change the Zero Networks environment token

#.Link
https://github.com/zeronetworks/zn.api/switch-znenvironment
#>
function Switch-ZNEnvironment {
    [CmdletBinding(DefaultParameterSetName = 'Name', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory, ParameterSetName = 'EnvironmentId')]
        [System.String]
        # EnvironmentId
        ${EnvironmentId},

        [Parameter(Mandatory, ParameterSetName = 'Name')]
        [System.String]
        # Environment Name
        ${EnvironmentName}
    )

    process {
        $uri = "https://portal.zeronetworks.com/api/v1"
            
        $znHeaders = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
        $znHeaders.Add("Authorization",$env:ZNApiKey)
        $znHeaders.Add("Content-Type","application/json")
        if($PSBoundParameters['EnvironmentName']){
            $envs = Get-ZNEnvironment | where {$_.name -like "*$EnvironmentName*"}
        }
        if($envs -eq $null){
            Write-Host "No environments found" -ForegroundColor Red
            break
        }
        elseif($envs.Count -gt 1){
            Write-Host "Found more than 1 environment, be more specific" -ForegroundColor Red
            Write-Host $envs.Name
            break
        }
        else{
            $EnvironmentId = $envs.Id
        }

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
                
        $env:ZNApiKey = $reponse.token
    }
}
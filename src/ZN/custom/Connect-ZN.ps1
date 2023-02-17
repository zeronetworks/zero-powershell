
<#
.Synopsis
Login to Zero Networks to get a token for cmdlet use
.Description
Login to Zero Networks to get a token for cmdlet use

#.Link
https://github.com/zeronetworks/zn.api/connect-zn
#>
function Connect-ZN {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # login
        ${Email}
    )

    process {
        CheckModuleLatest

        $uri = "https://portal.zeronetworks.com/api/v1"
            
        $challengeBody = @{
            "challengeMediumType" = "email"
            "email" = "$UserName"
        }
        $PSBoundParameters.Add("ChallengeMediumType", "email")
        try {
            #Invoke-RestMethod -Uri "$uri/auth/challenge" -Method POST -Body ($challengeBody | ConvertTo-Json) -ContentType application/json
            ZN.Api.internal\Invoke-ZNAuthChallenge @PSBoundParameters
        }
        catch {
            Write-Host "Unable to challenge" -ForegroundColor Red
            throw
        }
        
        Write-Host "Please enter the OTP code recieved via email" -ForegroundColor Green
        [string] $otp = Read-Host "Code"

        $loginBody = @{
            "challengeMediumType" = "email"
            "email" = "$UserName"
            "otp" = "$otp"
        }
        $PSBoundParameters.Add("Otp", $otp)
        try {
            #$response = Invoke-RestMethod -Uri "$uri/auth/login" -Method POST -Body ($loginBody | ConvertTo-Json) -ContentType application/json
            $response = ZN.Api.internal\Invoke-ZNAuthLogin @PSBoundParameters
        }
        catch {
            Write-Host "Unable to login" -ForegroundColor Red
            throw
        }
        
        $env:ZNApiKey = $response.token
    }
}
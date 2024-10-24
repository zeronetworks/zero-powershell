
<#
.Synopsis
Login to Zero Networks to get a token for cmdlet use
.Description
Login to Zero Networks to get a token for cmdlet use.
NOTE: If your environment has a IdP set for default authentication, you cannot use this cmdlet and will need to use Set-ZNApiKey cmdlet using an API token.

#.Link
https://github.com/zeronetworks/zero-powershell/tree/master/src/help/zeronetworks/Connect-ZN
#>
function Connect-ZN {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # Domain
        ${AccountName},

        [Parameter(Mandatory)]
        [System.String]
        # login
        ${Email}
    )

    process {
        CheckModuleLatest

        $env:ZNAccountName = $AccountName

        #$uri = "https://portal.zeronetworks.com/api/v1"
            
        $challengeBody = @{
            "challengeMediumType" = "email"
            "email" = "$UserName"
        }
        #$PSBoundParameters.Add("email", $email)
        try {
            #Invoke-RestMethod -Uri "$uri/auth/challenge" -Method POST -Body ($challengeBody | ConvertTo-Json) -ContentType application/json
            ZeroNetworks.internal\Invoke-ZNAuthChallenge @PSBoundParameters
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
            $response = ZeroNetworks.internal\Invoke-ZNAuthLogin @PSBoundParameters
        }
        catch {
            Write-Host "Unable to login" -ForegroundColor Red
            throw
        }
        
        $env:ZNApiKey = $response.token
    }
}
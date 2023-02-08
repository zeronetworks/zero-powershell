
<#
.Synopsis
Login to Zero Networks to get a token for cmdlet use
.Description
Login to Zero Networks to get a token for cmdlet use

#.Link
https://github.com/zeronetworks/zero-powershell/connect-zn
#>
function Connect-ZN {
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Low')]
    param(
        [Parameter(Mandatory)]
        [System.String]
        # login
        ${UserName}
    )

    process {
        $uri = "https://portal.zeronetworks.com/api/v1"
            
        $challengeBody = @{
            "challengeMediumType" = "email"
            "email" = "$UserName"
        }
        try {
            Invoke-RestMethod -Uri "$uri/auth/challenge" -Method POST -Body ($challengeBody | ConvertTo-Json) -ContentType application/json
        }
        catch {
            Write-Host "Unable to challenge" -ForegroundColor Red
            throw
        }
        
        Write-Host "Please enter the OTP code recieved via email" -ForegroundColor Green
        $otp = Read-Host "Code"

        $loginBody = @{
            "challengeMediumType" = "email"
            "email" = "$UserName"
            "otp" = "$otp"
        }

        try {
            $response = Invoke-RestMethod -Uri "$uri/auth/login" -Method POST -Body ($loginBody | ConvertTo-Json) -ContentType application/json
        }
        catch {
            Write-Host "Unable to login" -ForegroundColor Red
            throw
        }
        
        $env:ZNApiKey = $response.token
        $ZNApiKey = $response.token
    }
}
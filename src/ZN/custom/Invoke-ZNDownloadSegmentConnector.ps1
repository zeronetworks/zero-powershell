<#
.Synopsis
Download the Segment connector
.Description
Download the Segment connector

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/Invoke-ZNDownloadSegmentConnector
#>
function Invoke-ZNDownloadSegmentConnector {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.DownloadUrl])]
    [CmdletBinding(DefaultParameterSetName = 'DownloadExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'DownloadExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Account Name
        ${AccountName},

        [Parameter(ParameterSetName = 'DownloadExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Query')]
        [System.String]
        [ValidateSet('MAC_ARM64', 'MAC_X64', 'LEGACY_WIN_X64', 'LINUX_X64', 'LINUX_X86', 'WIN_X64', 'WIN_X86')]
        # Platform
        ${Platform},

        [Parameter()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        try {
            if ($PSBoundParameters['AccountName'] -eq $null) {
                if ($env:ZNAccountName -ne $null) {
                    $PSBoundParameters['AccountName'] = $env:ZNAccountName
                } elseIf ($env:ZNApiKey -ne $null) {
                    $PSBoundParameters['AccountName'] =(Read-ZNJWTtoken $env:ZNApiKey).aud.split(""."")[0]
                }
                else {
                    throw "AccountName is required. Provide a value for the AccountName parameter or set the ZNAccountName environment variable."
                }

            }
            
            $download = Invoke-RestMethod -Uri "https://$($PSBoundParameters['AccountName']).zeronetworks.com/api/v1/download/segment-connector/installer?platform=$($PSBoundParameters['Platform'])" -Method Get -Headers @{ 'Authorization' = "$($env:ZNApiKey)" }

            $downloadUrl = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.DownloadUrl]::new()
            $downloadUrl.Url = $download.url

            return $downloadUrl
        }
        catch {
            throw
        }
    }
}
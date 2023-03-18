<#
.Synopsis
Updates OT/IOT Asset
.Description
Updates OT/IoT Asset.

.Link
https://github.com/zeronetworks/zero-powershell/update-znassetsot
#>
function Update-ZNAssetsOt {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # assetId to filter on
        ${AssetId},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The name to update for the OT/IoT Asset.
        ${DisplayName},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The OT Asset type.
        ${Type},

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
            #Handle Get
            $assetId = $PSBoundParameters['AssetId'].ToString()
            $otAsset = ZeroNetworks\Get-ZNAsset -AssetId $assetId     

            $updatedotAsset = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.otAssetEditBody]::new()

            if($PSBoundParameters['DisplayName']){
                $updatedotAsset.DisplayName = $PSBoundParameters['DisplayName']
                $null = $PSBoundParameters.Remove('DisplayName')
            }
            else{
                $updatedotAsset.DisplayName = $otAsset.EntityName
                $null = $PSBoundParameters.Remove('DisplayName')
            }
            
            if($PSBoundParameters['Type']){
                $updatedotAsset.Type = $PSBoundParameters['Type']
                $null = $PSBoundParameters.Remove('Type')
            }
            else{
                $updatedotAsset.Type = $otAsset.EntityAssetType
                $null = $PSBoundParameters.Remove('Type')
            }
            Write-Debug $updatedotAsset | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedotAsset)
            ZeroNetworks.internal\Update-ZNAssetsOt @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
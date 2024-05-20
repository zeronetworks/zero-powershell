<#
.Synopsis
Updates an inbound  rule.
.Description
Updates an inbound  rule.

.Link
https://github.com/zeronetworks/zero-powershell/update-znassetinboundrule
#>
function Update-ZNAssetInboundRule {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Rule])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Asset Id
        ${AssetId},
        
        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # rule Id
        ${RuleId},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # Allow or Block
        ${Action},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The Destination asset(s).
        ${LocalEntityId},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String[]]
        # the destination process paths.
        ${LocalProcessesList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]]
        # the destination ports and protocols.
        ${PortsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the source asset(s).
        ${RemoteEntityIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # excluded destination asset(s).
        ${ExcludedLocalIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the rule state.
        ${State},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int64]
        # when the rule should expiry.
        ${ExpiresAt},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # the rule description.
        ${Description},

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
            $ruleId = $PSBoundParameters['RuleId'].ToString()
            $assetId = $PSBoundParameters['AssetId'].ToString()
            $rule = ZeroNetworks\Get-ZNAssetInboundRule -AssetId $assetId -RuleId $ruleId
            $rule = $rule.Item
            
            $updatedRule = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.RuleBody]::new()
            
            if($PSBoundParameters['LocalEntityId']){
                $updatedRule.LocalEntityId = $PSBoundParameters['LocalEntityId']
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }
            else{
                $updatedRule.LocalEntityId = $rule.LocalEntityId
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }

            if($PSBoundParameters['LocalProcessesList']){
                $updatedRule.LocalProcessesList = $PSBoundParameters['LocalProcessesList']
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            else{
                $updatedRule.LocalProcessesList = $rule.LocalProcessesList
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            
            $ports = @()
            if($PSBoundParameters['PortsList']){
                $updatedRule.PortsList = $PSBoundParameters['PortsList']
                $null = $PSBoundParameters.Remove('PortsList')
            }
            else{
                $updatedRule.PortsList = $rule.PortsList
                $null = $PSBoundParameters.Remove('PortsList')
            }
            
            if($PSBoundParameters['RemoteEntityIdsList']){
                $updatedRule.RemoteEntityIdsList = $PSBoundParameters['RemoteEntityIdsList']
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
            }
            else{
                $updatedRule.RemoteEntityIdsList = $rule.RemoteEntityIdsList
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
            }
            
            if($PSBoundParameters['ExcludedLocalIdsList']){
                $updatedRule.ExcludedLocalIdsList = $PSBoundParameters['ExcludedLocalIdsList']
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }
            else{
                $updatedRule.ExcludedLocalIdsList = $rule.ExcludedLocalIdsList
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }

            if($PSBoundParameters['State']){
                $updatedRule.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedRule.State = $rule.State
                $null = $PSBoundParameters.Remove('State')
            }

            if($PSBoundParameters['ExpiresAt']){
                $updatedRule.ExpiresAt = $PSBoundParameters['ExpiresAt']
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            else{
                $updatedRule.ExpiresAt = $rule.ExpiresAt
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            
            if($PSBoundParameters['Description']){
                $updatedRule.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedRule.Description = $rule.Description
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['Action']){
                $updatedRule.Action = $PSBoundParameters['Action']
                $null = $PSBoundParameters.Remove('Action')
            }
            else{
                $updatedRule.Action = $rule.Action
                $null = $PSBoundParameters.Remove('Action')
            }
            #Write-Debug $updatedRule | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedRule)
            ZeroNetworks.internal\Update-ZNAssetInboundRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
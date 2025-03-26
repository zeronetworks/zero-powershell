<#
.Synopsis
Updates an inbound OTrule.
.Description
Updates an inbound OT rule.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-zngroupsinboundotrule
#>
function Update-ZNGroupsInboundOtRule {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchRuleItem])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Account Name
        ${AccountName},
        
        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Group Id
        ${GroupId},

        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Group Type
        ${GroupType},
        
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
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsListBodyItem[]]
        # the destination ports and protocols.
        ${ProtocolsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the source asset(s).
        ${RemoteEntitiesIdList},

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

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        ${ServicesList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${ShouldBuildMirrorRules},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SrcUsersListItem[]]
        ${SrcUsersList},

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
            $groupId = $PSBoundParameters['GroupId'].ToString()
            $groupType = $PSBoundParameters['GroupType'].ToString()
            $rule = ZeroNetworks\Get-ZNGroupsInboundOtRule -GroupId $groupId -GroupType $groupType -RuleId $ruleId
            
            $updatedRule = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchRuleBody]::new()

            $updatedRule.Direction = 1
            
            if($PSBoundParameters['LocalEntityId']){
                $updatedRule.LocalEntityId = $PSBoundParameters['LocalEntityId']
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }
            else{
                $updatedRule.LocalEntityId = $rule.ItemLocalEntityId
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }

            if($PSBoundParameters['LocalProcessesList']){
                $updatedRule.LocalProcessesList = $PSBoundParameters['LocalProcessesList']
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            else{
                $updatedRule.LocalProcessesList = $rule.ItemLocalProcessesList
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            
            
            
            if($PSBoundParameters['ProtocolsList']){
                $updatedRule.ProtocolsList = $PSBoundParameters['ProtocolsList']
                $null = $PSBoundParameters.Remove('ProtocolsList')
            }
            else{
                $protocolList = @()
                foreach($protocol in $rule.ItemProtocolsList){
                    $protocolList += New-ZNProtocolsList -Protocol $protocol.ProtocolType -LocalPorts $protocol.LocalPorts -RemotePorts $protocol.RemotePorts
                }
                $updatedRule.ProtocolsList =  $protocolList
                $null = $PSBoundParameters.Remove('ProtocolsList')
            }
            
            if($PSBoundParameters['RemoteEntitiesIdList']){
                $updatedRule.RemoteEntitiesIdList = $PSBoundParameters['RemoteEntitiesIdList']
                $null = $PSBoundParameters.Remove('RemoteEntitiesIdList')
            }
            else{
                $updatedRule.RemoteEntitiesIdList = $rule.ItemRemoteEntitiesIdList
                $null = $PSBoundParameters.Remove('RemoteEntitiesIdList')
            }
            
            if($PSBoundParameters['ExcludedLocalIdsList']){
                $updatedRule.ExcludedLocalIdsList = $PSBoundParameters['ExcludedLocalIdsList']
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }
            else{
                $updatedRule.ExcludedLocalIdsList = $rule.ItemExcludedLocalIdsList
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }

            if($PSBoundParameters['State']){
                $updatedRule.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedRule.State = $rule.ItemState
                $null = $PSBoundParameters.Remove('State')
            }

            if($PSBoundParameters['ExpiresAt']){
                $updatedRule.ExpiresAt = $PSBoundParameters['ExpiresAt']
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            else{
                $updatedRule.ExpiresAt = $rule.ItemExpiresAt
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            
            if($PSBoundParameters['Description']){
                $updatedRule.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedRule.Description = $rule.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['Action']){
                $updatedRule.Action = $PSBoundParameters['Action']
                $null = $PSBoundParameters.Remove('Action')
            }
            else{
                $updatedRule.Action = $rule.ItemAction
                $null = $PSBoundParameters.Remove('Action')
            }

            if($PSBoundParameters['ShouldBuildMirrorRules']){
                $updatedRule.ShouldBuildMirrorRules = $PSBoundParameters['ShouldBuildMirrorRules']
                $null = $PSBoundParameters.Remove('ShouldBuildMirrorRules')
            } else{
                $updatedRule.ShouldBuildMirrorRules = $rule.ItemShouldBuildMirrorRules
                $null = $PSBoundParameters.Remove('ShouldBuildMirrorRules')
            }

            if($PSBoundParameters['ServicesList']){
                $updatedRule.ServicesList = $PSBoundParameters['ServicesList']
                $null = $PSBoundParameters.Remove('ServicesList')
            }
            else{
                $updatedRule.ServicesList = $rule.ItemServicesList
                $null = $PSBoundParameters.Remove('ServicesList')
            }
            
            if($PSBoundParameters['SrcUsersList']){
                $updatedRule.SrcUsersList = $PSBoundParameters['SrcUsersList']
                $null = $PSBoundParameters.Remove('SrcUsersList')
            }
            else{
                $updatedRule.SrcUsersList = $rule.ItemSrcUsersList
                $null = $PSBoundParameters.Remove('SrcUsersList')
            }

            #Write-Debug $updatedRule | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedRule)
            ZeroNetworks.internal\Update-ZNGroupsInboundOtRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
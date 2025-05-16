<#
.Synopsis
Updates an outbound rule.
.Description
Updates an outbound rule.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znuseroutboundrule
#>
function Update-ZNUserOutboundRule {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Rule])]
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
        # user Id
        ${UserId},
        
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
        # the rule description.
        ${Description},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # excluded source entities.
        ${ExcludedLocalIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int64]
        # when the rule should expiry.
        ${ExpiresAt},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int[]]
        # IpSec Config
        ${IPSecOpt},
                
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The source asset(s).
        ${LocalEntityId},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String[]]
        # the source process paths.
        ${LocalProcessesList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]]
        # the destination ports and protocols.
        ${PortsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the destination asset(s).
        ${RemoteEntityIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # services list
        ${ServicesList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SrcUsersListItem[]]
        # the source user(s).
        ${SrcUsersList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the rule state.
        ${State},

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
            $rule = ZeroNetworks\Get-ZNOutboundRule -RuleId $ruleId
            
            $updatedRule = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.RuleBody]::new()

            if($PSBoundParameters['Action']){
                $updatedRule.Action = $PSBoundParameters['Action']
                $null = $PSBoundParameters.Remove('Action')
            }
            else{
                $updatedRule.Action = $rule.ItemAction
                $null = $PSBoundParameters.Remove('Action')
            }

            if($PSBoundParameters['Description']){
                $updatedRule.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedRule.Description = $rule.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['ExcludedLocalIdsList']){
                $updatedRule.ExcludedLocalIdsList = $PSBoundParameters['ExcludedLocalIdsList']
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }
            else{
                $updatedRule.ExcludedLocalIdsList = $rule.ItemExcludedLocalIdsList
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }

            if($PSBoundParameters['ExpiresAt']){
                $updatedRule.ExpiresAt = $PSBoundParameters['ExpiresAt']
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            else{
                $updatedRule.ExpiresAt = $rule.ItemExpiresAt
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
        
            if($PSBoundParameters['IPSecOpt']){
                $updatedRule.ExpiresAt = $PSBoundParameters['IPSecOpt']
                $null = $PSBoundParameters.Remove('IPSecOpt')
            }
            else{
                $updatedRule.IPSecOpt = $rule.ItemIPSecOpt
                $null = $PSBoundParameters.Remove('IPSecOpt')
            }            
            
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
            
            $ports = @()
            if($PSBoundParameters['PortsList']){
                $updatedRule.PortsList = $PSBoundParameters['PortsList']
                $null = $PSBoundParameters.Remove('PortsList')
            }
            else{
                $updatedRule.PortsList = $rule.ItemPortsList
                $null = $PSBoundParameters.Remove('PortsList')
            }
            
            if($PSBoundParameters['RemoteEntityIdsList']){
                $updatedRule.RemoteEntityIdsList = $PSBoundParameters['RemoteEntityIdsList']
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
            }
            else{
                $updatedRule.RemoteEntityIdsList = $rule.ItemRemoteEntityIdsList
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
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
            
            if($PSBoundParameters['State']){
                $updatedRule.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedRule.State = $rule.ItemState
                $null = $PSBoundParameters.Remove('State')
            }

            #Write-Debug $updatedRule | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedRule)
            ZeroNetworks.internal\Update-ZNUserOutboundRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
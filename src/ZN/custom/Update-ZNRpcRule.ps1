<#
.Synopsis
Updates an RPC rule.
.Description
Updates an RPC rule.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znrpcrule
#>
function Update-ZNRpcRule {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.RpcRuleResponse])]
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
        # rule Id
        ${RuleId},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [Int32]
        # Allow or block.
        ${Action},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # the rule description.
        ${Description},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the excluded assets.
        ${ExcludedAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int64]
        # when the rule should expiry.
        ${ExpiresAt},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # RPC Interface list
        ${InterfaceUuidsList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The Destination asset(s).
        ${LocalAssetId}, 

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        #RPC Interface Operations List
        ${OpNumbersList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        #RPC Protocols list
        ${ProtocolsList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        #Source asset list
        ${RemoteAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the rule state.
        ${State},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        # The accounts.
        ${UserIdsList},

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
            $rule = ZeroNetworks\Get-ZNRpcRule -RuleId $ruleId

            $updatedRule = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.RpcRuleBody]::new()
            
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

            if($PSBoundParameters['ExcludedAssetIdsList']){
                $updatedRule.ExcludedAssetIdsList = $PSBoundParameters['ExcludedAssetIdsList']
                $null = $PSBoundParameters.Remove('ExcludedAssetIdsList')
            }
            else{
                $updatedRule.ExcludedAssetIdsList = $rule.ItemExcludedAssetIdsList
                $null = $PSBoundParameters.Remove('ExcludedAssetIdsList')
            }

            if($PSBoundParameters['ExpiresAt']){
                $updatedRule.ExpiresAt = $PSBoundParameters['ExpiresAt']
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }
            else{
                if($rule.ItemExpiresAt -ne 0){
                    $updatedRule.ExpiresAt = $rule.ItemExpiresAt
                }
                $null = $PSBoundParameters.Remove('ExpiresAt')
            }

            if($PSBoundParameters['InterfaceUuidsList']){
                $updatedRule.InterfaceUuidsList = $PSBoundParameters['InterfaceUuidsList']
                $null = $PSBoundParameters.Remove('InterfaceUuidsList')
            }
            else{
                $updatedRule.InterfaceUuidsList = $rule.ItemInterfaceUuidsList
                $null = $PSBoundParameters.Remove('InterfaceUuidsList')
            }
            
            if($PSBoundParameters['LocalAssetId']){
                $updatedRule.LocalAssetId = $PSBoundParameters['LocalAssetId']
                $null = $PSBoundParameters.Remove('LocalAssetId')
            }
            else{
                $updatedRule.LocalAssetId = $rule.ItemLocalAssetId
                $null = $PSBoundParameters.Remove('LocalAssetId')
            }

            if($PSBoundParameters['OpNumbersList']){
                $updatedRule.OpNumbersList = $PSBoundParameters['OpNumbersList']
                $null = $PSBoundParameters.Remove('OpNumbersList')
            }
            else{
                $updatedRule.OpNumbersList = $rule.ItemOpNumbersList
                $null = $PSBoundParameters.Remove('OpNumbersList')
            }
            
            if($PSBoundParameters['ProtocolsList']){
                $updatedRule.ProtocolsList = $PSBoundParameters['ProtocolsList']
                $null = $PSBoundParameters.Remove('ProtocolsList')
            }
            else{
                $updatedRule.ProtocolsList = $rule.ItemProtocolsList
                $null = $PSBoundParameters.Remove('ProtocolsList')
            }
            
            if($PSBoundParameters['RemoteAssetIdsList']){
                $updatedRule.RemoteAssetIdsList = $PSBoundParameters['RemoteAssetIdsList']
                $null = $PSBoundParameters.Remove('RemoteAssetIdsList')
            }
            else{
                $updatedRule.RemoteAssetIdsList = $rule.ItemRemoteAssetIdsList
                $null = $PSBoundParameters.Remove('RemoteAssetIdsList')
            }
            
            if($PSBoundParameters['State']){
                $updatedRule.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedRule.State = $rule.ItemState
                $null = $PSBoundParameters.Remove('State')
            }

            if($PSBoundParameters['UserIdsList']){
                $updatedRule.UserIdsList = $PSBoundParameters['UserIdsList']
                $null = $PSBoundParameters.Remove('UserIdsList')
            }
            else{
                $updatedRule.UserIdsList = $rule.ItemUserIdsList
                $null = $PSBoundParameters.Remove('UserIdsList')
            }

            #Write-Debug $updatedRule | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedRule)
            ZeroNetworks.internal\Update-ZNRpcRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
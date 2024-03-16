<#
.Synopsis
Updates an identity rule.
.Description
Updates an identity rule.

.Link
https://github.com/zeronetworks/zero-powershell/update-znassetidentityrule
#>
function Update-ZNAssetIdentityRule {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.IdentityRule])]
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
        [Int32[]]
        # The selected logon rights.
        ${IdentityProtectionCategoryList},

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
            $rule = ZeroNetworks\Get-ZNAssetIdentityRule -AssetId $assetId -RuleId $ruleId

            $updatedRule = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IdentityRuleBody]::new()
             
            if($PSBoundParameters['Action']){
                $updatedRule.Action = $PSBoundParameters['Action']
                $null = $PSBoundParameters.Remove('Action')
            }
            else{
                $updatedRule.Action = $rule.ItemAction
                $null = $PSBoundParameters.Remove('Action')
            }

            $updatedRule.AssetId = $rule.ItemAssetId
            
            if($PSBoundParameters['Description']){
                $updatedRule.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedRule.Description = $rule.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }
            
            if($PSBoundParameters['IdentityProtectionCategoryList']){
                $updatedRule.IdentityProtectionCategoryList = $PSBoundParameters['IdentityProtectionCategoryList']
                $null = $PSBoundParameters.Remove('IdentityProtectionCategoryList')
            }
            else{
                $updatedRule.IdentityProtectionCategoryList = $rule.ItemIdentityProtectionCategoryList
                $null = $PSBoundParameters.Remove('IdentityProtectionCategoryList')
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
            
            if($PSBoundParameters['ExcludedAssetIdsList']){
                $updatedRule.ExcludedAssetsIdsList = $PSBoundParameters['ExcludedAssetIdsList']
                $null = $PSBoundParameters.Remove('ExcludedAssetIdsList')
            }
            else{
                $updatedRule.ExcludedAssetIdsList = $rule.ItemExcludedAssetIdsList
                $null = $PSBoundParameters.Remove('ExcludedAssetIdsList')
            }
            #Write-Debug $updatedRule | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedRule)
            ZeroNetworks.internal\Update-ZNAssetIdentityRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
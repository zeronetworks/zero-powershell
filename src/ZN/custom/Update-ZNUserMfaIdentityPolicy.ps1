<#
.Synopsis
Updates an identity MFA Policy.
.Description
Updates an identity MFA Policy.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znusermfaidentitypolicy
#>
function Update-ZNUserMfaIdentityPolicy {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.IdentityReactivePolicy])]
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
        # User
        ${UserId},

        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # policy Id
        ${ReactivePolicyId},

        #[Parameter(ParameterSetName = 'UpdateExpanded')]
        #[ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        #[System.String]
        # destination asset(s).
        #${DstAssetId},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # fallback to logged on user enable/disable.
        ${FallbackToSingleLoggedOnUser},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int[]]
        # MFA methods.
        ${IdentityProtectionCategoryList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int[]]
        # MFA methods.
        ${MfaMethodsList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [Switch]
        # Override built in MFA policies
        ${OverrideBuiltins},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the rule expiration.
        ${RuleDuration},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        # source asset(s).
        ${SrcAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        # source user(s).
        ${SrcUserIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the policy state.
        ${State},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # the policy description.
        ${Description},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        #excluded destinations
        ${ExcludedDstAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        #excluded sources
        ${ExcludedSrcAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int[]]
        #extra logon types to allow 
        ${ExtraIdentityProtectionCategoryList},

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
            $policyId = $PSBoundParameters['ReactivePolicyId'].ToString()
            $userId = $PSBoundParameters['UserId'].ToString()
            $policy = ZeroNetworks\Get-ZNUserMfaIdentityPolicy -UserId $userId -ReactivePolicyId $policyId

            $updatedPolicy = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IdentityReactivePolicyBody]::new()
            
            $updatedPolicy.DstAssetId = $policy.ItemDstAssetId
        
            if($PSBoundParameters['FallbackToSingleLoggedOnUser']){
                $updatedPolicy.FallbackToSingleLoggedOnUser = $PSBoundParameters['FallbackToSingleLoggedOnUser']
                $null = $PSBoundParameters.Remove('FallbackToSingleLoggedOnUser')
            }
            else{
                $updatedPolicy.FallbackToSingleLoggedOnUser = $policy.ItemFallbackToSingleLoggedOnUser
                $null = $PSBoundParameters.Remove('FallbackToSingleLoggedOnUser')
            }

            if($PSBoundParameters['IdentityProtectionCategoryList']){
                $updatedPolicy.IdentityProtectionCategoryList = $PSBoundParameters['IdentityProtectionCategoryList']
                $null = $PSBoundParameters.Remove('IdentityProtectionCategoryList')
            }
            else{
                $updatedPolicy.IdentityProtectionCategoryList = $policy.ItemIdentityProtectionCategoryList
                $null = $PSBoundParameters.Remove('IdentityProtectionCategoryList')
            }
            
            if($PSBoundParameters['MfaMethodsList']){
                $updatedPolicy.MfaMethodsList = $PSBoundParameters['MfaMethodsList']
                $null = $PSBoundParameters.Remove('MfaMethodsList')
            }
            else{
                $updatedPolicy.MfaMethodsList = $policy.ItemMfaMethodsList
                $null = $PSBoundParameters.Remove('MfaMethodsList')
            } 

            if($PSBoundParameters['OverrideBuiltins']){
                $updatedPolicy.OverrideBuiltins = $PSBoundParameters['OverrideBuiltins']
                $null = $PSBoundParameters.Remove('OverrideBuiltins')
            }
            else{
                $updatedPolicy.OverrideBuiltins = $policy.ItemOverrideBuiltins
                $null = $PSBoundParameters.Remove('OverrideBuiltins')
            }

            if($PSBoundParameters['RuleDuration']){
                $updatedPolicy.RuleDuration = $PSBoundParameters['RuleDuration']
                $null = $PSBoundParameters.Remove('RuleDuration')
            }
            else{
                $updatedPolicy.RuleDuration = $policy.ItemRuleDuration
                $null = $PSBoundParameters.Remove('RuleDuration')
            }

            if($PSBoundParameters['SrcAssetIdsList']){
                $updatedPolicy.SrcAssetIdsList = $PSBoundParameters['SrcAssetIdsList']
                $null = $PSBoundParameters.Remove('SrcAssetIdsList')
            }
            else{
                $updatedPolicy.SrcAssetIdsList = $policy.ItemSrcAssetIdsList
                $null = $PSBoundParameters.Remove('SrcAssetIdsList')
            }
            
            if($PSBoundParameters['SrcUserIdsList']){
                $updatedPolicy.SrcUserIdsList = $PSBoundParameters['SrcUserIdsList']
                $null = $PSBoundParameters.Remove('SrcUserIdsList')
            }
            else{
                $updatedPolicy.SrcUserIdsList = $policy.ItemSrcUserIdsList
                $null = $PSBoundParameters.Remove('SrcUserIdsList')
            }
            
            if($PSBoundParameters['State']){
                $updatedPolicy.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedPolicy.State = $policy.ItemState
                $null = $PSBoundParameters.Remove('State')
            }

            if($PSBoundParameters['Description']){
                $updatedPolicy.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedPolicy.Description = $policy.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['ExcludedDstAssetIdsList']){
                $updatedPolicy.ExcludedDstAssetIdsList = $PSBoundParameters['ExcludedDstAssetIdsList']
                $null = $PSBoundParameters.Remove('ExcludedDstAssetIdsList')
            }
            else{
                $updatedPolicy.ExcludedDstAssetIdsList = $policy.ItemExcludedDstAssetIdsList
                $null = $PSBoundParameters.Remove('ExcludedDstAssetIdsList')
            }
            
            if($PSBoundParameters['ExcludedSrcAssetIdsList']){
                $updatedPolicy.ExcludedSrcAssetIdsList = $PSBoundParameters['ExcludedSrcAssetIdsList']
                $null = $PSBoundParameters.Remove('ExcludedSrcAssetIdsList')
            }
            else{
                $updatedPolicy.ExcludedSrcAssetIdsList = $policy.ExcludedSrcAssetIdsList
                $null = $PSBoundParameters.Remove('ExcludedSrcAssetIdsList')
            }
            
            if($PSBoundParameters['ExtraIdentityProtectionCategoryList']){
                $updatedPolicy.ExtraIdentityProtectionCategoryList = $PSBoundParameters['ExtraIdentityProtectionCategoryList']
                $null = $PSBoundParameters.Remove('ExtraIdentityProtectionCategoryList')
            }
            else{
                $updatedPolicy.ExtraIdentityProtectionCategoryList = $policy.ExtraIdentityProtectionCategoryList
                $null = $PSBoundParameters.Remove('ExtraIdentityProtectionCategoryList')
            }

            #Write-Debug $updatedPolicy | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedPolicy)
            ZeroNetworks.internal\Update-ZNUserMfaIdentityPolicy @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
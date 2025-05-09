<#
.Synopsis
Approve a "pending review" rule with or without changes
.Description
Approve a "pending review" rule with or without changes

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/Approve-ZNAssetInboundRuleReview
#>
function Approve-ZNAssetInboundRuleReview {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any])]
    [CmdletBinding(DefaultParameterSetName = 'ApproveExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'ApproveExpanded')]
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Account Name
        ${AccountName},

        [Parameter(ParameterSetName = 'ApproveExpanded', Mandatory)]
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # Asset Id
        ${AssetId},
        
        [Parameter(ParameterSetName = 'ApproveExpanded', Mandatory)]
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # rule Id
        ${RuleId},
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # Comments
        ${Details},
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ValidateSet('HumanTrafficCoveredByMFA', 'TightenRuleScope', 'MissingPortOrProcess', 'AffectedEntitiesContainedInAnExisitingGroup', 'RedundantRule', 'TrafficShouldBeBlocked', 'Other')]
        # Review Reason int32
        ${Reason},
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int32]
        # Action
        ${Action},
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # the rule description.
        ${Description},
        #[-RuleInfoDescription <String>] 
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # excluded destination asset(s).
        ${ExcludedLocalIdsList},
        #[-RuleInfoExcludedLocalIdsList <String[]>] 
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [Int64]
        # when the rule should expiry.
        ${ExpiresAt},
        #[-RuleInfoExpiresAt <Int64>]

        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int32]
        # ip sec configuration
        ${IpSecOpt},

        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The Destination asset(s).
        ${LocalEntityId},
        #[-RuleInfoLocalEntityId <String>] 

        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String[]]
        # the destination process paths.
        ${LocalProcessesList},
        #[-RuleInfoLocalProcessesList <String[]>]
        
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]]
        # the destination ports and protocols.
        ${PortsList},
        #[-RuleInfoPortsList <IPortsListItem[]>] 
         
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the source asset(s).
        ${RemoteEntityIdsList},
        #[-RuleInfoRemoteEntityIdsList <String[]>] 
         
        [Parameter(ParameterSetName = 'ApproveWithChangesExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int32]
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
            #handle based on paramtersetname
            switch ($PsCmdlet.ParameterSetName) {
                "ApproveExpanded" {
                    ZeroNetworks.internal\Approve-ZNAssetInboundRulesReview @PSBoundParameters
                }
                "ApproveWithChangesExpanded" {
                    #Handle Get
                    $ruleId = $PSBoundParameters['RuleId'].ToString()
                    $rule = ZeroNetworks\Get-ZNInboundRule -RuleId $ruleId 
                    
                    $ruleReview = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.RuleReviewApproveWithChanges]::new()

                    if ($PSBoundParameters['Reason']) {
                        if ($PSBoundParameters['Reason'] -eq 'Other') {
                            if (!$PSBoundParameters['Details']) {
                                Write-Error "You must provide Details if Reason is Other"
                            }
                        }
                        switch ($PSBoundParameters['Reason']) {
                            'HumanTrafficCoveredByMFA' { $intReason = 1 }
                            'TightenRuleScope' { $intReason = 2 }
                            'MissingPortOrProcess' { $intReason = 3 }
                            'AffectedEntitiesContainedInAnExisitingGroup' { $intReason = 4 }
                            'RedundantRule' { $intReason = 5 }
                            'TrafficShouldBeBlocked' { $intReason = 6 }
                            "Other" { $intReason = 7 }
                        }
                        $ruleReview.ReviewReason = $intReason
                        $null = $PSBoundParameters.Remove('Reason')
                    }

                    if ($PSBoundParameters['Details']) {
                        $ruleReview.ReviewDetails = $PSBoundParameters['Details']
                        $null = $PSBoundParameters.Remove('Details')
                    }else{
                        $ruleReview.ReviewDetails = ""
                    }

                    $ruleReview.RuleInfoDirection = 1

                    if ($PSBoundParameters['Action']) {
                        $ruleReview.RuleInfoAction = $PSBoundParameters['Action']
                        $null = $PSBoundParameters.Remove('Action')
                    }
                    else {
                        $ruleReview.RuleInfoAction = $rule.ItemAction
                        $null = $PSBoundParameters.Remove('Action')
                    }
                    
                    if ($PSBoundParameters['Description']) {
                        $ruleReview.RuleInfoDescription = $PSBoundParameters['Description']
                        $null = $PSBoundParameters.Remove('Description')
                    }
                    else {
                        $ruleReview.RuleInfoDescription = $rule.ItemDescription
                        $null = $PSBoundParameters.Remove('Description')
                    }

                    if ($PSBoundParameters['ExcludedLocalIdsList']) {
                        $ruleReview.RuleInfoExcludedLocalIdsList = $PSBoundParameters['ExcludedLocalIdsList']
                        $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
                    }
                    else {
                        $ruleReview.RuleInfoExcludedLocalIdsList = $rule.ItemExcludedLocalIdsList
                        $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
                    }

                    if ($PSBoundParameters['ExpiresAt']) {
                        $ruleReview.RuleInfoExpiresAt = $PSBoundParameters['ExpiresAt']
                        $null = $PSBoundParameters.Remove('ExpiresAt')
                    }
                    else {
                        $ruleReview.RuleInfoExpiresAt = $rule.ItemExpiresAt
                        $null = $PSBoundParameters.Remove('ExpiresAt')
                    }

                    if ($PSBoundParameters['IpSecOpt']) {
                        $ruleReview.RuleInfoIpSecOpt = $PSBoundParameters['IpSecOpt']
                        $null = $PSBoundParameters.Remove('IpSecOpt')
                    }
                    else {
                        $ruleReview.RuleInfoIpSecOpt = $rule.ItemIpSecOpt
                        $null = $PSBoundParameters.Remove('IpSecOpt')
                    }
                    
                    if ($PSBoundParameters['LocalEntityId']) {
                        $ruleReview.RuleInfoLocalEntityId = $PSBoundParameters['LocalEntityId']
                        $null = $PSBoundParameters.Remove('LocalEntityId')
                    }
                    else {
                        $ruleReview.RuleInfoLocalEntityId = $rule.ItemLocalEntityId
                        $null = $PSBoundParameters.Remove('LocalEntityId')
                    }
                    
                    if ($PSBoundParameters['LocalProcessesList']) {
                        $ruleReview.RuleInfoLocalProcessesList = $PSBoundParameters['LocalProcessesList']
                        $null = $PSBoundParameters.Remove('LocalProcessesList')
                    }
                    else {
                        $ruleReview.RuleInfoLocalProcessesList = $rule.ItemLocalProcessesList
                        $null = $PSBoundParameters.Remove('LocalProcessesList')
                    }

                    if ($PSBoundParameters['PortsList']) {
                        $ruleReview.RuleInfoPortsList = $PSBoundParameters['PortsList']
                        $null = $PSBoundParameters.Remove('PortsList')
                    }
                    else {
                        $ruleReview.RuleInfoPortsList = $rule.ItemPortsList
                        $null = $PSBoundParameters.Remove('PortsList')
                    }
                    
                    if ($PSBoundParameters['RemoteEntityIdsList']) {
                        $ruleReview.RuleInfoRemoteEntityIdsList = $PSBoundParameters['RemoteEntityIdsList']
                        $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
                    }
                    else {
                        $ruleReview.RuleInfoRemoteEntityIdsList = $rule.ItemRemoteEntityIdsList
                        $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
                    }
                    
                    if ($PSBoundParameters['State']) {
                        $ruleReview.RuleInfoState = $PSBoundParameters['State']
                        $null = $PSBoundParameters.Remove('State')
                    }
                    else {
                        $ruleReview.RuleInfoState = 1
                        $null = $PSBoundParameters.Remove('State')
                    }

                    $null = $PSBoundParameters.Add('Body', $ruleReview)
                    ZeroNetworks.internal\Approve-ZNAssetInboundRulesReview @PSBoundParameters
                }
            }
        }
        catch {
            throw
        }
    }
}
<#
.Synopsis
Updates an external access policy.
.Description
Updates an external access policy.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/tree/master/src/help/zeronetworks/update-zngroupsexternalaccesspolicy
#>
function Update-ZNGroupsExternalAccessPolicy {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.ExternalAccessPolicyItem])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
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
        # policy Id
        ${PolicyId},

        #[Parameter(ParameterSetName = 'UpdateExpanded')]
        #[ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        #[System.String]
        # destination asset(s).
        #${DstAssetId},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Models.IPortsListItem[]]
        # extra ports to open.
        ${DstPortsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String[]]
        # destination processes.
        ${DstProcessNamesList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # aname.
        ${Name},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [Int]
        # Duration of the rule
        ${RuleDuration},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String[]]
        # List of source users
        ${SrcUserIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String]
        # description
        ${Description},
         
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int[]]
        # State
        ${State},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String]
        # Url
        ${Url},

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
            $groupId = $PSBoundParameters['GroupId'].ToString()
            $groupType = $PSBoundParameters['GroupType'].ToString()
            $policy = ZeroNetworks\Get-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType $groupType -PolicyId $policyId

            $updatedPolicy = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ExternalAccessPolicyBody]::new()
            
            if($PSBoundParameters['Description']){
                $updatedPolicy.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedPolicy.Description = $policy.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }
            
            $updatedPolicy.DstAssetId = $policy.ItemDstAssetId
            
        
            if($PSBoundParameters['DstPortsList']){
                $updatedPolicy.DstPortsList = $PSBoundParameters['DstPortsList']
                $null = $PSBoundParameters.Remove('DstPortsList')
            }
            else{
                $updatedPolicy.DstPortsList = $policy.ItemDstPortsList
                $null = $PSBoundParameters.Remove('DstPortsList')
            }
            
            if($PSBoundParameters['DstProcessNamesList']){
                $updatedPolicy.DstProcessNamesList = $PSBoundParameters['DstProcessNamesList']
                $null = $PSBoundParameters.Remove('DstProcessNamesList')
            }
            else{
                $updatedPolicy.DstProcessNamesList = $policy.ItemDstProcessNamesList
                $null = $PSBoundParameters.Remove('DstProcessNamesList')
            }

            if($PSBoundParameters['Name']){
                $updatedPolicy.Name = $PSBoundParameters['Name']
                $null = $PSBoundParameters.Remove('Name')
            }
            else{
                $updatedPolicy.Name = $policy.ItemName
                $null = $PSBoundParameters.Remove('Name')
            }

            if($PSBoundParameters['RuleDuration']){
                $updatedPolicy.RuleDuration = $PSBoundParameters['RuleDuration']
                $null = $PSBoundParameters.Remove('RuleDuration')
            }
            else{
                $updatedPolicy.RuleDuration = $policy.ItemRuleDuration
                $null = $PSBoundParameters.Remove('RuleDuration')
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

            if($PSBoundParameters['Url']){
                $updatedPolicy.Url = $PSBoundParameters['Url']
                $null = $PSBoundParameters.Remove('Url')
            }
            else{
                $updatedPolicy.Url = $policy.ItemUrl
                $null = $PSBoundParameters.Remove('Url')
            }
        
            #Write-Debug $updatedPolicy | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedPolicy)
            ZeroNetworks.internal\Update-ZNGroupsExternalAccessPolicy @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
<#
.Synopsis
Updates an inbound AE Exclusion rule.
.Description
Updates an inbound AE Exclusion rule.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znaeexclusionsinbound 
#>
function Update-ZNAeExclusionsInbound {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.AeExclusion])]
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
        [string[]]
        # IpSec Config
        ${IPSecOpt},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the rule state.
        ${State},

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
            $aeExclusionId = $PSBoundParameters['RuleId'].ToString()
            $aeExclusion = ZeroNetworks\Get-ZNAeExclusionsInbound -RuleId $aeExclusionId
            
            $updatedAeExclusion = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.AeExclusionRuleBody]::new()
            
            if($PSBoundParameters['LocalEntityId']){
                $updatedAeExclusion.LocalEntityId = $PSBoundParameters['LocalEntityId']
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }
            else{
                $updatedAeExclusion.LocalEntityId = $aeExclusion.ItemLocalEntityId
                $null = $PSBoundParameters.Remove('LocalEntityId')
            }

            if($PSBoundParameters['LocalProcessesList']){
                $updatedAeExclusion.LocalProcessesList = $PSBoundParameters['LocalProcessesList']
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            else{
                $updatedAeExclusion.LocalProcessesList = $aeExclusion.ItemLocalProcessesList
                $null = $PSBoundParameters.Remove('LocalProcessesList')
            }
            
            $ports = @()
            if($PSBoundParameters['PortsList']){
                $updatedAeExclusion.PortsList = $PSBoundParameters['PortsList']
                $null = $PSBoundParameters.Remove('PortsList')
            }
            else{
                $updatedAeExclusion.PortsList = $aeExclusion.ItemPortsList
                $null = $PSBoundParameters.Remove('PortsList')
            }
            
            if($PSBoundParameters['RemoteEntityIdsList']){
                $updatedAeExclusion.RemoteEntityIdsList = $PSBoundParameters['RemoteEntityIdsList']
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
            }
            else{
                $updatedAeExclusion.RemoteEntityIdsList = $aeExclusion.ItemRemoteEntityIdsList
                $null = $PSBoundParameters.Remove('RemoteEntityIdsList')
            }
            
            if($PSBoundParameters['ExcludedLocalIdsList']){
                $updatedAeExclusion.ExcludedLocalIdsList = $PSBoundParameters['ExcludedLocalIdsList']
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }
            else{
                $updatedAeExclusion.ExcludedLocalIdsList = $aeExclusion.ItemExcludedLocalIdsList
                $null = $PSBoundParameters.Remove('ExcludedLocalIdsList')
            }

            if($PSBoundParameters['State']){
                $updatedAeExclusion.State = $PSBoundParameters['State']
                $null = $PSBoundParameters.Remove('State')
            }
            else{
                $updatedAeExclusion.State = $aeExclusion.ItemState
                $null = $PSBoundParameters.Remove('State')
            }
            
            if($PSBoundParameters['IPSecOpt']){
                $updatedAeExclusion.ExpiresAt = $PSBoundParameters['IPSecOpt']
                $null = $PSBoundParameters.Remove('IPSecOpt')
            }
            else{
                $updatedAeExclusion.IPSecOpt = $aeExclusion.ItemIPSecOpt
                $null = $PSBoundParameters.Remove('IPSecOpt')
            }
            
            if($PSBoundParameters['Description']){
                $updatedAeExclusion.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedAeExclusion.Description = $aeExclusion.ItemDescription
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['Action']){
                $updatedAeExclusion.Action = $PSBoundParameters['Action']
                $null = $PSBoundParameters.Remove('Action')
            }
            else{
                $updatedAeExclusion.Action = $aeExclusion.ItemAction
                $null = $PSBoundParameters.Remove('Action')
            }
            #Write-Debug $updatedAeExclusion | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedAeExclusion)
            ZeroNetworks.internal\Update-ZNAeExclusionsInbound @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
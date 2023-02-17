<#
.Synopsis
Updates a custom group properties.
.Description
Updates a custom group properties.

.Link
https://github.com/zeronetworks/zn.api/update-zncustomgroup
#>
function Update-ZNCustomGroup {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Group])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'UpdateExpanded', Mandatory)]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # groupId to filter on
        ${GroupId},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The name to update the custom group to.
        ${Name},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [System.String]
        # The description for the custom group.
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
            $groupId = $PSBoundParameters['GroupId'].ToString()
            $customGroup = ZN.Api\Get-ZNGroup -GroupId $groupId     
            $customGroupMembers = ZN.Api\Get-ZNGroupsMember -GroupId $groupId -IncludeNestedMembers:$false


            $updatedCustomGroup = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.CustomGroupBody]::new()

            if($PSBoundParameters['Name']){
                $updatedCustomGroup.Name = $PSBoundParameters['Name']
                $null = $PSBoundParameters.Remove('Name')
            }
            else{
                $updatedCustomGroup.Name = $customGroup.EntityName
                $null = $PSBoundParameters.Remove('Name')
            }
            
            if($PSBoundParameters['Description']){
                $updatedCustomGroup.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedCustomGroup.Description = $customGroup.EntityDescription
                $null = $PSBoundParameters.Remove('Description')
            }
            
            $MembersId = @()
            foreach($member in $customGroupMembers.Entities){
                $MembersId += $member.Id
            }
            $updatedCustomGroup.MembersId = $MembersId

            $null = $PSBoundParameters.Add('Body', $updatedCustomGroup)
            ZN.Api.internal\Update-ZNCustomGroup @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
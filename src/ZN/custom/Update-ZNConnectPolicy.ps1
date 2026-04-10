<#
.Synopsis
Updates a Connect policy.
.Description
Updates a Connect policy.

.Link
https://github.com/zeronetworks/zero-powershell/zeronetworks/update-znconnectpolicy
#>
function Update-ZNConnectPolicy {
    [OutputType([void])]
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
        # user access config Id
        ${UserAccessConfigId},
    
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # Allowed Regioms
        ${AllowedRegions},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the connectivity state after reboot.
        ${ConnectivityStateAfterReboot},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string]
        # description.
        ${Description},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # List of allowed destination entity ids.
        ${DstEntityIdsList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [switch]
        # Force SSO Authentication.
        ${ForceSsoAuthentication},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # The allowed asset ids.
        ${LoginAuthorizedEntityAllowedAssetIdsList}, 

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the allowed asset sources
        ${LoginAuthorizedEntityAllowedAssetsSourcesList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the allowed user ids
        ${LoginAuthorizedEntityAllowedUsersIdsList},
        
        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the excluded asset ids.
        ${LoginAuthorizedEntityExcludedAssetIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [string[]]
        # the excluded user ids.
        ${LoginAuthorizedEntityExcludedUserIdsList},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [String]
        # The policy name
        ${Name},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Body')]
        [int]
        # the session TTL in hours. 
        ${SessionTtlHours},

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
            $UserAccessConfigId = $PSBoundParameters['UserAccessConfigId'].ToString()
            $policy = ZeroNetworks\Get-ZNConnectPolicy -Limit 400 | where {$_.id -eq $UserAccessConfigId}

            $updatedPolicy = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.connectUserAccessConfigBody]::new()
            
            if($PSBoundParameters['AllowedRegions']){
                $updatedPolicy.AllowedRegions = $PSBoundParameters['AllowedRegions']
                $null = $PSBoundParameters.Remove('AllowedRegions')
            }
            else{
                $updatedPolicy.AllowedRegions = $policy.AllowedRegions.Id
                $null = $PSBoundParameters.Remove('AllowedRegions')
            }

            if($PSBoundParameters['ConnectivityStateAfterReboot']){
                $updatedPolicy.ConnectivityStateAfterReboot = $PSBoundParameters['ConnectivityStateAfterReboot']
                $null = $PSBoundParameters.Remove('ConnectivityStateAfterReboot')
            }
            else{
                $updatedPolicy.ConnectivityStateAfterReboot = $policy.ConnectivityStateAfterReboot
                $null = $PSBoundParameters.Remove('ConnectivityStateAfterReboot')
            }

            if($PSBoundParameters['Description']){
                $updatedPolicy.Description = $PSBoundParameters['Description']
                $null = $PSBoundParameters.Remove('Description')
            }
            else{
                $updatedPolicy.Description = $policy.Description
                $null = $PSBoundParameters.Remove('Description')
            }

            if($PSBoundParameters['DstEntityIdsList']){
                $updatedPolicy.DstEntityIdsList = $PSBoundParameters['DstEntityIdsList']
                $null = $PSBoundParameters.Remove('DstEntityIdsList')
            }
            else{
                $updatedPolicy.DstEntityIdsList = $policy.ItemDstEntityIdsList
                $null = $PSBoundParameters.Remove('DstEntityIdsList')
            }

            if($PSBoundParameters['ForceSsoAuthentication']){
                $updatedPolicy.ForceSsoAuthentication = $PSBoundParameters['ForceSsoAuthentication']
                $null = $PSBoundParameters.Remove('ForceSsoAuthentication')
            }
            else{
                $updatedPolicy.ForceSsoAuthentication = $policy.ForceSsoAuthentication
                $null = $PSBoundParameters.Remove('ForceSsoAuthentication')
            }
            
            if($PSBoundParameters['LoginAuthorizedEntityAllowedAssetIdsList']){
                $updatedPolicy.LoginAuthorizedEntityAllowedAssetIdsList = $PSBoundParameters['LoginAuthorizedEntityAllowedAssetIdsList']
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedAssetIdsList')
            }
            else{
                $updatedPolicy.LoginAuthorizedEntityAllowedAssetIdsList = $policy.AllowedAssetIds.id
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedAssetIdsList')
            }

            if($PSBoundParameters['LoginAuthorizedEntityAllowedAssetsSourcesList']){
                $updatedPolicy.LoginAuthorizedEntityAllowedAssetsSourcesList = $PSBoundParameters['LoginAuthorizedEntityAllowedAssetsSourcesList']
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedAssetsSourcesList')
            }
            else{
                $updatedPolicy.LoginAuthorizedEntityAllowedAssetsSourcesList = $policy.AllowedAssetSources.id
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedAssetsSourcesList')
            }
            
            if($PSBoundParameters['LoginAuthorizedEntityAllowedUsersIdsList']){
                $updatedPolicy.LoginAuthorizedEntityAllowedUsersIdsList = $PSBoundParameters['LoginAuthorizedEntityAllowedUsersIdsList']
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedUsersIdsList')
            }
            else{
                $updatedPolicy.LoginAuthorizedEntityAllowedUsersIdsList = $policy.AllowedUserIds.id
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityAllowedUsersIdsList')
            }
            
            if($PSBoundParameters['LoginAuthorizedEntityExcludedAssetIdsList']){
                $updatedPolicy.LoginAuthorizedEntityExcludedAssetIdsList = $PSBoundParameters['LoginAuthorizedEntityExcludedAssetIdsList']
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityExcludedAssetIdsList')
            }
            else{
                $updatedPolicy.LoginAuthorizedEntityExcludedAssetIdsList = $policy.ExcludedAssetIds.id
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityExcludedAssetIdsList')
            }
            
            if($PSBoundParameters['LoginAuthorizedEntityExcludedUserIdsList']){
                $updatedPolicy.LoginAuthorizedEntityExcludedUserIdsList = $PSBoundParameters['LoginAuthorizedEntityExcludedUserIdsList']
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityExcludedUserIdsList')
            }
            else{
                $updatedPolicy.LoginAuthorizedEntityExcludedUserIdsList = $policy.ExcludedUserIds.id
                $null = $PSBoundParameters.Remove('LoginAuthorizedEntityExcludedUserIdsList')
            }

            if($PSBoundParameters['Name']){
                $updatedPolicy.Name = $PSBoundParameters['Name']
                $null = $PSBoundParameters.Remove('Name')
            }
            else{
                $updatedPolicy.Name = $policy.Name
                $null = $PSBoundParameters.Remove('Name')
            }

            if($PSBoundParameters['SessionTtlHours']){
                $updatedPolicy.SessionTtlHours = $PSBoundParameters['SessionTtlHours']
                $null = $PSBoundParameters.Remove('SessionTtlHours')
            }
            else{
                $updatedPolicy.SessionTtlHours = $policy.SessionTtlHours
                $null = $PSBoundParameters.Remove('SessionTtlHours')
            }

            #Write-Debug $updatedPolicy | Out-String
            $null = $PSBoundParameters.Add('Body', $updatedPolicy)
            ZeroNetworks.internal\Update-ZNConnectPolicy @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
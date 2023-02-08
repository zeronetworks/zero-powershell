<#
.Synopsis
Get an entity
.Description
Get an entity

.Link
https://github.com/zn/get-znentity
#>
function Get-ZNEntity {
    [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset],[ZeroNetworks.PowerShell.Cmdlets.Api.Models.Group],[ZeroNetworks.PowerShell.Cmdlets.Api.Models.User])]
    [CmdletBinding(DefaultParameterSetName = 'default', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter()]
        [ZeroNetworks.PowerShell.Cmdlets.Api.Category('Path')]
        [System.String]
        # the entityId to get
        ${EntityId},
        
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
            if($PSBoundParameters['Debug']){
                $Entity = ZN..internal\Get-ZNEntity -EntityId $EntityId -Debug
            }
            else{$Entity = ZN..internal\Get-ZNEntity -EntityId $EntityId}
            if($entity.EntityId -like "a:*"){
                $object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.Asset]::new()
                $object.AssetStatus = $entity.EntityAssetStatus
                $object.AssetType = $entity.EntityAssetType
                $object.Domain = $entity.EntityDomain
                $object.Fqdn = $entity.EntityFqdn
                $object.IPV4Addresses = $entity.EntityIpv4Addresses
                $object.IPV6Addresses = $entity.EntityIpv6Addresses
                $object.Id = $entity.EntityId
                $object.Managers = $entity.EntityManagers
                $object.Name = $entity.EntityName
                $object.OperatingSystem = $entity.EntityOperatingSystem
                $object.ProtectionState = $entity.EntityProtectionState
                $object.Source = $entity.EntitySource
                $object.StateAssetId = $entity.StateAssetId
                $object.StateIsAssetConnected = $entity.StateIsAssetConnected
                $object.StateLasDisconnectedAt = $entity.StateLasDisconnectedAt
                $object.StateProtectAt = $entity.StateProtectAt
                $object.StateProtectionState = $entity.StateProtectionState
            }
            elseif($entity.EntityId -like "u:*"){
                $object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.User]::new()
                $object.CreatedAt = $entity.EntityCreatedAt
                $object.DistinguishedName = $entity.EntityDistinguishedName
                $object.Domain = $entity.EntityDomain
                $object.Email = $entity.EntityEmail
                $object.FirstName = $entity.EntityFirstName
                $object.Guid = $entity.EntityGuid
                $object.Id = $entity.EntityId
                $object.JobTitle = $entity.EntityJobTitle
                $object.LastLogon = $entity.EntityLastLogon
                $object.LastName = $entity.EntityLastName
                $object.Name = $entity.EntityName
                $object.OfficePhone = $entity.EntityOfficePhone
                $object.Phone = $entity.EntityPhone
                $object.Role = $entity.EntityRole
                $object.Sid = $entity.EntitySid
                $object.Source = $entity.EntitySource
                $object.UserPrincipleName = $entity.EntityUserPrincipleName
            }
            elseif($entity.EntityId -like "g:*"){
                $object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.Group]::new()
                $object.CreatedAt = $entity.EntityCreatedAt
                $object.Description = $entity.EntityDescription
                $object.DirectMembersCount = $entity.EntityDirectMembersCount
                $object.Domain = $entity.EntityDomain
                $object.Guid = $entity.EntityGuid
                $object.HasProtectionPolicy = $entity.EntityHasProtectionPolicy
                $object.Id = $entity.EntityId
                $object.Name = $entity.EntityName
                $object.Role = $entity.EntityRole
                $object.Sid = $entity.EntitySid
                $object.UpdatedAt = $entity.EntityUpdatedAt
            }
            else{
                $Object = $entity
            }
            
            return $Object
        }
        catch {
            throw
        }
    }
}
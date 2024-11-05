    <#
    .Synopsis
    Create a push notification setting
    .Description
    Create a push notification setting

    .Outputs
    ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any
    .Link
    https://github.com/zeronetworks/zero-powershell/zeronetworks/New-ZNSettingsPushNotification
    #>
    function New-ZNSettingsPushNotification {
        [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Any])]
        [CmdletBinding(PositionalBinding=$false)]
        Param(
    
            [Parameter(Mandatory, HelpMessage="duo or microsoftAuthenticator", ParameterSetName = 'CreateDuo')]
            [Parameter(Mandatory, HelpMessage="duo or microsoftAuthenticator", ParameterSetName = 'CreateMSFT')]
            [ValidateSet("duo","microsoftAuthenticator")]
            [string]
            $PushIdentityProviderId,

            [Parameter(Mandatory, HelpMessage="Api Hostname", ParameterSetName = 'CreateDuo')]
            [string]
            $ApiHostname,

            [Parameter(Mandatory, HelpMessage="Integration Key", ParameterSetName = 'CreateDuo')]
            [string]
            $IntegrationKey,

            [Parameter(Mandatory, HelpMessage="TenantId", ParameterSetName = 'CreateMSFT')]
            [string]
            $TenantId,
            
            [Parameter(Mandatory, HelpMessage="Secret Key", ParameterSetName = 'CreateDuo')]
            [Parameter(Mandatory, HelpMessage="Secret Key", ParameterSetName = 'CreateMSFT')]
            [string]
            $SecretKey

        )

        process {
            $Object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.settingsPushNotificaitionsBody]::New()

            switch ($PsCmdlet.ParameterSetName) {
                "CreateDuo" {
                    $object.Host = $PSBoundParameters['ApiHostname']
                    $null = $PSBoundParameters.Remove('ApiHostname')

                    $object.Id = $PSBoundParameters['IntegrationKey']
                    $null = $PSBoundParameters.Remove('IntegrationKey')

                    $object.IdentityProvider = "duo"

                    $object.SecretKey = $PSBoundParameters['SecretKey']
                    $null = $PSBoundParameters.Remove('SecretKey')
                }
                "CreateMSFT" {

                    $object.Id = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')

                    $object.IdentityProvider = "microsoftAuthentictor"

                    $object.SecretKey = $PSBoundParameters['SecretKey']
                    $null = $PSBoundParameters.Remove('SecretKey')
                }
            }
            $null = $PSBoundParameters.Remove['PushIdentityProviderId']

            $null = $PSBoundParameters.Add('Body', $object)
            ZeroNetworks.internal\New-ZNSettingsPushNotification @PSBoundParameters
            
        }
    }
    

    <#
    .Synopsis
    Create a in-memory object for protcolList
    .Description
    Create a in-memory object for protocolList

    .Outputs
    ZeroNetworks.PowerShell.Cmdlets.Api.Models.PortsListItem
    .Link
    https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znprotocolslist
    #>
    function New-ZNProtocolsList {
        [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.switchProtocolsListBodyItem])]
        [CmdletBinding(PositionalBinding=$false)]
        Param(
    
            [Parameter(Mandatory, HelpMessage="Protocol", ParameterSetName = 'Protocol')]
            [ValidateSet("Any","TCP","UDP","ICMP","1","6","17","256")]
            [string]
            $Protocol,

            [Parameter(HelpMessage="Local Ports", ParameterSetName = 'Protocol')]
            [string]
            $LocalPorts,

            [Parameter(HelpMessage="Remote Ports", ParameterSetName = 'Protocol')]
            [string]
            $RemotePorts,

            [Parameter(Mandatory, HelpMessage="Empty port list", ParameterSetName = 'Empty')]
            [switch]
            $Empty
        )

        process {
            $Object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SwitchProtocolsListBodyItem]::New()

            switch ($PSBoundParameters['Protocol']) {
                "Any" {
                    $Object.ProtocolType = 256
                    $Object.LocalPorts = ""
                }
                "256" {
                    $Object.ProtocolType = 256
                    $Object.LocalPorts = ""
                    $Object.RemotePorts = ""
                }
                "TCP" {
                    $Object.ProtocolType = 6
                    $Object.LocalPorts = $PSBoundParameters['LocalPorts']
                }
                "6" {
                    $Object.ProtocolType = 6
                    $Object.LocalPorts = $PSBoundParameters['LocalPorts']
                }
                "UDP" {
                    $Object.ProtocolType = 17
                    $Object.LocalPorts = $PSBoundParameters['LocalPorts']
                }
                "17" {
                    $Object.ProtocolType = 17
                    $Object.LocalPorts = $PSBoundParameters['LocalPorts']
                }
                "ICMP" {
                    $Object.ProtocolType = 1
                    $Object.LocalPorts = ""
                }
                "1" {
                    $Object.ProtocolType = 1
                    $Object.LocalPorts = ""
                }
            }
            if($PSBoundParameters['RemotePorts']) {
                $Object.RemotePorts = $PSBoundParameters['RemotePorts']
            } else {
                $Object.RemotePorts = ""
            }

            return $Object
        }
    }
    

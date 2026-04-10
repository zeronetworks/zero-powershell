    <#
    .Synopsis
    Create a in-memory object for VersionMaintenanceWindow
    .Description
    Create a in-memory object for VersionMaintenanceWindow

    .Outputs
    ZeroNetworks.PowerShell.Cmdlets.Api.Models.VersionMaintenanceWindow
    .Link
    https://github.com/zeronetworks/zero-powershell/zeronetworks/new-znsettingsversionmaintenancewindow
    #>
    function New-ZNSettingsVersionMaintenanceWindow {
        [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.VersionMaintenanceWindow])]
        [CmdletBinding(PositionalBinding=$false)]
        Param(
    
            [Parameter(HelpMessage="Description", ParameterSetName = 'Protocol')]
            [string]
            $Description,

            [Parameter(Mandatory, HelpMessage="Start Time", ParameterSetName = 'Empty')]
            [ValidateRange(0, 24)]
            [int]
            $StartTime,

            [Parameter(Mandatory, HelpMessage="Day of the week", ParameterSetName = 'Empty')]
            [ValidateSet("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")]
            [String]
            $WeekDay
        )

        process {
            $Object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.VersionMaintenanceWindowBodyItem]::New()

            if($PSBoundParameters['Description']){
                $Object.Description = $PSBoundParameters['Description']
            }

            $object.StartTimeUTC = $PSBoundParameters['StartTime']

            switch ($PSBoundParameters['WeekDay']) {
                "Sunday" {
                    $Object.WeekDay = 1
                }
                "Monday" {
                    $Object.WeekDay = 2
                }
                "Tuesday" {
                    $Object.WeekDay = 3
                }
                "Wednesday" {
                    $Object.WeekDay = 4
                }
                "Thursday" {
                    $Object.WeekDay = 5
                }
                "Friday" {
                    $Object.WeekDay = 6
                }
                "Saturday" {
                    $Object.WeekDay = 7
                }
            }

            return $Object
        }
    }

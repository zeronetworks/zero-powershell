$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsConnectUserAccessConfig.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-ZNSettingsConnectUserAccessConfig' {
    It 'CreateExpanded' {
        $users = Get-ZNSettingsConnectUserAccessConfigSourceUsersCandidate | Where {$_.Name -eq 'zero'}
        $destinations = Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate | where {$_.Name -eq 'Internal subnets'}
        $regions = Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate | where {$_.Name -eq "Any Region"}
        New-ZNSettingsConnectUserAccessConfig -DstEntityIdsList @($destinations.id) -MembersIdsList @($users.id) -Name TestUAC -SessionTtlHours 168 -AllowedRegions @($regions.id) -ConnectivityStateAfterReboot "1"
        $uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'TestUAC'}
        $uac.SessionTtlHours | Should -Be 168
        Remove-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id
    }
}

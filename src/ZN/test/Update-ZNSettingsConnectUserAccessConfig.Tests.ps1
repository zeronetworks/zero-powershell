$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsConnectUserAccessConfig.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsConnectUserAccessConfig' {
    It 'UpdateExpanded' { 
        $users = Get-ZNSettingsConnectUserAccessConfigCandidate | Where {$_.Name -eq 'zero'}
        $destinations = Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate | where {$_.Name -eq 'Internal subnets'}
        New-ZNSettingsConnectUserAccessConfig -DstEntityIdsList @($destinations.id) -MembersIdsList @($users.id) -Name TestUAC -SessionTtlHours 168
        $uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'TestUAC'}
        Update-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id -SessionTtlHours 24 -DstEntityIdsList @($uac.AllowedDestinations.Id) -MembersIdsList @($uac.MemberIds.Id) -Name $uac.Name
        $uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'TestUAC'}
        $uac.SessionTtlHours | Should -Be 24
        Remove-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id
    }
}

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
        $users = (Get-ZNSettingsConnectUserAccessConfigSourceUsersCandidate).Items | Select -First 1
        $destinations = (Get-ZNSettingsConnectUserAccessConfigDestinationsCandidate).Items | where {$_.Name -eq 'Internal subnets'}
        $regions = Get-ZNSettingsConnectUserAccessConfigAllowedRegionsCandidate | where {$_.Name -eq "Any Region"}
        New-ZNSettingsConnectUserAccessConfig -AllowedRegions @($regions.id) -ConnectivityStateAfterReboot 1 -DstEntityIdsList @($destinations.id) -ForceSsoAuthentication:$false -LoginAuthorizedEntityAllowedAssetIdsList @("b:110001") -LoginAuthorizedEntityAllowedAssetsSourcesList @("1") -LoginAuthorizedEntityAllowedUsersIdsList @($users.id) -Name TestUAC -SessionTtlHours 168
        $uac = Get-ZNSettingsConnectUserAccessConfig | where {$_. Name -eq 'TestUAC'}
        $uac.SessionTtlHours | Should -Be 168
        Remove-ZNSettingsConnectUserAccessConfig -UserAccessConfigId $uac.id
    }
}

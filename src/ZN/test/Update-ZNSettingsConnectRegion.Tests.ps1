$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsConnectRegion.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsConnectRegion' {
    It 'UpdateExpanded' {
        New-ZNSettingsConnectRegion -DnsServersIPAddressList @("192.168.1.1") -IPAddress "2.3.4.5" -Name NewRegion
        $region = Get-ZNSettingsConnectRegion | where {$_.Name -eq "NewRegion"}
        { Update-ZNSettingsConnectRegion -RegionId $region.Id -DnsServersIPAddressList $region.DnsServersIPAddressList -IPAddress $region.IPAddress -Name $region.Name -DnsSuffixesList @("test.local") } | Should -Not -Throw
        Remove-ZNSettingsConnectRegion -RegionId $region.Id
    }
}

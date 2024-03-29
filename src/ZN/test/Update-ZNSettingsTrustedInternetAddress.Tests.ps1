$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsTrustedInternetAddress.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsTrustedInternetAddress' {
    It 'UpdateExpanded' {
        $trusted = Get-ZNSettingsTrustedInternetAddress
        $trustednew += "1.2.4.5"
        $trustednew += $trusted
        { Update-ZNSettingsTrustedInternetAddress -ExternalIpsList $trustednew } | Should -Not -Throw
        Update-ZNSettingsTrustedInternetAddress -ExternalIpsList $trusted
    }
}

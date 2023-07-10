$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAdSettingsAutomationGroupsProtectedCandidate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAdSettingsAutomationGroupsProtectedCandidate' {
    It 'Get' {
        $ad = Get-ZNAdSetting
        $count = (Get-ZNAdSettingsAutomationGroupsProtectedCandidate -ForestId $ad.ForestId).Items.Count
        $count | Should -BeGreaterThan 0
    }
}

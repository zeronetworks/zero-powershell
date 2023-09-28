$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetProtect.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Test-ZNAssetProtect' {
    It 'Validate' -skip {
        Test-ZNAssetProtect -AssetId a:a:8ErCHXe8 | Should -Not -Be $null
    }

    It 'ValidateExpanded' {
        Test-ZNAssetProtect -Items @("a:a:8ErCHXe8") | Should -Not -Be $null
    }
}
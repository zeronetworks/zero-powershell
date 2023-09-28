$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAsset.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Unprotect-ZNAsset' {
    It 'Unprotect1' -skip {
        Test-ZNAssetUnprotect -AssetId a:a:8ErCHXe8 | Should -Not -Be $null
    }

    It 'UnprotectExpanded' -skip {
        Test-ZNAssetUnprotect -Items @("a:a:8ErCHXe8") | Should -Not -Be $null
    }
}

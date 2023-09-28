$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetOt.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Unprotect-ZNAssetOt' {
    It 'Unprotect1' -skip {
        { Unprotect-ZNAsset } | Should -Not -Throw
    }

    It 'UnprotectExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}

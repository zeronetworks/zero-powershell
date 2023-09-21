$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetOt.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Protect-ZNAssetOt' {
    It 'ProtectViaIdentity' {
        $otasset = Search-ZNAsset -Fqdn "ot20245"
        { Protect-ZNAssetOt -Items @($otAsset) } | Should -Not -Throw
        Unprotect-ZNAssetOt -Items @($otAsset)
    }
}

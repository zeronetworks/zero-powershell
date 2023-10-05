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
    It 'Unprotect1' {
        $asset = Get-ZNAssetsOt -Limit 100 | where {$_.ProtectionState -eq 1} | Select -First 1
        Protect-ZNAssetOt -AssetId $asset.Id
        {Unprotect-ZNAssetOt -AssetId $asset} | Should -Not -Throw
    }

    It 'UnprotectExpanded' {
        $asset = Get-ZNAssetsOt -Limit 100 | where {$_.ProtectionState -eq 1} | Select -First 1
        Protect-ZNAssetOt -AssetId $asset.Id
        {Unprotect-ZNAssetOt -Items @($asset)} | Should -Not -Throw
    }
}

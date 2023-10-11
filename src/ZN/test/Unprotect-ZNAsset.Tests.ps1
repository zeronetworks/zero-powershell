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
    It 'Unprotect1' {
        $asset = Search-ZNAsset -Fqdn ls01.posh.local
        $assetFull = Get-ZNAsset -AssetId $asset
        if($Asset.StateProtectionState -eq 1){
            Protect-ZNAsset -AssetId $asset
        }
        Test-ZNAssetUnprotect -AssetId a:a:8ErCHXe8 | Should -Not -Be $null
        Unprotect-ZNAsset -AssetId $asset
    }

    It 'UnprotectExpanded' {
        $asset = Search-ZNAsset -Fqdn ls01.posh.local
        $assetFull = Get-ZNAsset -AssetId $asset
        if($Asset.StateProtectionState -eq 1){
            Protect-ZNAsset -AssetId $asset
        }
        Test-ZNAssetUnprotect -Items @($asset) | Should -Not -Be $null
        Unprotect-ZNAsset -AssetId $asset
    }
}

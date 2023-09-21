$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetQueueAsset.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Invoke-ZNAssetQueueAsset' {
    It 'LearnExpanded' {
        $asset = Search-ZNAsset -Fqdn "WC01.posh.local"
        { Invoke-ZNAssetQueueAsset -AssetId $asset -QueueDays 30 } | Should -Not -Throw
        Unprotect-ZNAsset -AssetId $asset
    }
}

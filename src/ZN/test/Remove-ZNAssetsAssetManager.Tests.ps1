$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetsAssetManager.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNAssetsAssetManager' {
    It 'Delete' {
        $manager = Get-ZNUser -Search Test
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        Add-ZNAssetsAssetManager -AssetId $asset -ManagerIds $manager.id
        $managers = Get-ZNAssetsAssetManager -AssetId $asset
        { Remove-ZNAssetsAssetManager -AssetId $asset -GroupOrUserId $manager.id } | Should -Not -Throw
    }
}

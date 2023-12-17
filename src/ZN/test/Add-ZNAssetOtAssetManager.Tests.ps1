$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNAssetOtAssetManager.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Add-ZNAssetOtAssetManager' {
    It 'AddExpanded' {
        $asset = Search-ZNAsset -Fqdn switch01
        $user = (get-znuser).Items | select -First 1
        Add-ZNAssetOtAssetManager -AssetId $asset -ManagerIds @($user.Id)
        $managedAssets = Get-ZNUsersManagedAsset -UserId $user.Id
        $managedAssets.EntityId | Should -Be $asset
        Remove-ZNAssetOtAssetManager -AssetId $asset -GroupOrUserId $user.Id
    }
}

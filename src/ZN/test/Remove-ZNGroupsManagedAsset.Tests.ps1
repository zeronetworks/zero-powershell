$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsManagedAsset.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNGroupsManagedAsset' {
    It 'DeleteViaIdentity' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        New-ZNCustomGroup -Name "RemoveGroupsManagedAssetTest"
        $customGroup = Get-ZNCustomGroup -Search RemoveGroupsManagedAssetTest
        Add-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -EntityIds @($asset)
        $managedAssets = Get-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom
        { Remove-ZNGroupsManagedAsset -GroupId $customGroup.Id -GroupType Custom -GroupOrAssetId $asset } | Should -Not -Throw
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}

$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNUsersManagedAsset.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNUsersManagedAsset' {
    It 'Delete' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $user = (Get-ZNUser).Items | Select -First 1
        Add-ZNUsersManagedAsset -UserId $user.Id -EntityIds @($asset) -Permission 3
        $managedAssets = Get-ZNUsersManagedAsset -UserId $user.Id
        { Remove-ZNUsersManagedAsset -UserId $user.Id -GroupOrAssetId $asset } | Should -Not -Throw
    }
}

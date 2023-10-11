$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetManager.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetManager' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        $user = Get-ZNUser -search test
        Add-ZNAssetManager -AssetId $asset -ManagerIds @($user.Id)
        (Get-ZNAssetManager -AssetId $asset).Count | Should -Not -Be $null
        Remove-ZNAssetManager -AssetId $asset -GroupOrUserId $user.Id
    }
}

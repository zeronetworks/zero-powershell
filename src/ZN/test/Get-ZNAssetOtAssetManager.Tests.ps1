$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtAssetManager.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetOtAssetManager' {
    It 'List' { 
        $asset = Search-ZNAsset -Fqdn ot1777
        $user = Get-ZNUser -search test
        Add-ZNAssetOtAssetManager -AssetId $asset -ManagerIds @($user.Id)
        (Get-ZNAssetOtAssetManager -AssetId $asset).Count | Should -Not -Be $null
        Remove-ZNAssetOtAssetManager -AssetId $asset -GroupOrUserId $user.Id
    }
}

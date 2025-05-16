$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetMfaOutboundPoliciesExcludedSourceCandidate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetMfaOutboundPoliciesExcludedSourceCandidate' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn switch01).AssetId
        (get-ZNAssetMfaOutboundPoliciesExcludedSourceCandidate -AssetId $asset).Items.Count | Should -BeGreaterThan 0
    }
}

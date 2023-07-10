$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNAssetsInboundBlockRuleReview.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Deny-ZNAssetsInboundBlockRuleReview' {
    It 'DenyExpanded' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        $rule = Get-ZNAssetsInboundBlockRule -AssetId $asset | where {$_.State -eq 4} | Select-Object -First 1
        { Deny-ZNAssetsInboundBlockRuleReview -AssetId $asset -RuleId $rule.id -Reason MissingPortOrProcess } | Should -Not -Throw
    }
}

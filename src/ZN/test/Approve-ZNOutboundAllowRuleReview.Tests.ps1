$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Approve-ZNOutboundAllowRuleReview.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Approve-ZNOutboundAllowRuleReview' {
    It 'ApproveExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $rule = Get-ZNOutboundAllowRule | where {$_.State -eq 4} | Select-Object -First 1
        Approve-ZNOutboundAllowRuleReview -RuleId $rule.id
        $updatedRule = Get-ZNOutboundAllowRule | where {$_.Id -eq $rule.id}
        $updatedRule.State | Should -Be 1
        Remove-ZNOutboundAllowRule -RuleId $updatedRule.id
    }

    It 'ApproveWithChangesExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $rule = Get-ZNOutboundAllowRule | where {$_.State -eq 4} | Select-Object -First 1
        Approve-ZNOutboundAllowRuleReview -RuleId $rule.id -Description "updatedapproval" -Reason MissingPortOrProcess
        $updatedRule = Get-ZNOutboundAllowRule | where {$_.Id -eq $rule.id}
        $updatedRule.State | Should -Be 1
        Remove-ZNOutboundAllowRule -RuleId $updatedRule.id
    }
}

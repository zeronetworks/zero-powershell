if(($null -eq $TestName) -or ($TestName -contains 'Approve-ZNOutboundRuleReview'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Approve-ZNOutboundRuleReview.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Approve-ZNOutboundRuleReview' {
     It 'ApproveExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $rule = (Get-ZNOutboundRule -Limit 100).Items | where {$_.SuggestionType -eq 1} | Select-Object -First 1
        Approve-ZNOutboundRuleReview -RuleId $rule.id
        $updatedRule = (Get-ZNOutboundRule -Limit 100).Items | where {$_.Id -eq $rule.id}
        $updatedRule.SuggestionType | Should -Be 0
        Remove-ZNOutboundRule -RuleId $updatedRule.id
    }

    It 'ApproveWithChangesExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $rule = (Get-ZNOutboundRule -Limit 100).Items | where {$_.SuggestionType -eq 1} | Select-Object -First 1
        Approve-ZNOutboundRuleReview -RuleId $rule.id -Description "updatedapproval" -Reason MissingPortOrProcess
        $updatedRule = (Get-ZNOutboundRule -Limit 100).Items | where {$_.Id -eq $rule.id}
        $updatedRule.SuggestionType | Should -Be 0
        Remove-ZNOutboundRule -RuleId $updatedRule.id
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNOutboundRuleReview'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNOutboundRuleReview.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNOutboundRuleReview' {
    It 'DenyExpanded' {
        $rule = Get-ZNOutboundRule -Limit 100 | where {$_.State -eq 4} | Select-Object -First 1
        { Deny-ZNOutboundRuleReview -RuleId $rule.id -Reason MissingPortOrProcess } | Should -Not -Throw
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Approve-ZNOutboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Approve-ZNOutboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Approve-ZNOutboundRulesCleanup' {
    It 'Approve' {
        $rule = (Get-ZNOutboundRule -AddAncestors -AddBuiltins -limit 400).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Approve-ZNOutboundRulesCleanup -RuleId $rule.id } | Should -Not -Throw
    }
}

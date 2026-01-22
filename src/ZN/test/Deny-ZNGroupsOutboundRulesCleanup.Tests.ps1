if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNGroupsOutboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNGroupsOutboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNGroupsOutboundRulesCleanup' {
    It 'Deny' {
        $group = (Get-ZNGroup -Search DHCP).items | Select-Object -First 1
        $rule = (Get-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -AddAncestors -AddBuiltins).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNGroupsOutboundRulesCleanup -GroupId $group.id -GroupType tag -RuleId $rule.id -Details "powershelltesting" -Reason 7 } | Should -Not -Throw
    }
}

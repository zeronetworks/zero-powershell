if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNGroupsInboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNGroupsInboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNGroupsInboundRulesCleanup' {
    It 'Deny' {
        $group = (Get-ZNGroup -Search DHCP).items | Select-Object -First 1
        $rule = (Get-ZNGroupsInboundRule -GroupId $group.id -GroupType tag -AddAncestors -AddBuiltins).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNGroupsInboundRulesCleanup -GroupId $group.id -GroupType tag -RuleId $rule.id -Details "powershelltesting" -Reason 7 } | Should -Not -Throw
    }
}

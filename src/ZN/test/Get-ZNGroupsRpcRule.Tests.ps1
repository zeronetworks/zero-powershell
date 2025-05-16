if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsRpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsRpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsRpcRule' {
    It 'List' {
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        (Get-ZNGroupsRpcRule -GroupId $group.id -GroupType Tag -AddBuiltins).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        $rules = (Get-ZNGroupsRpcRule -GroupId $group.id -GroupType Tag -AddBuiltins).Items
        $rule = Get-ZNGroupsRpcRule -GroupId $group.id -GroupType Tag -RuleId $rules[0].Id
        $rule.ItemId | Should -Not -BeNullOrEmpty
    }
}

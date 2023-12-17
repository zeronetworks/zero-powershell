if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsIdentityRule' {
    It 'List' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.Id -like "g:t:*"}
        $rules = Get-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -AddBuiltins
        $rules.Count | Should -BeGreaterThan 0
    }
    It 'Get' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.Id -like "g:t:*"}
        $rules = Get-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -AddBuiltins
        $ruleId = $rules.Items[0].Id
        $rule = Get-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -RuleId $ruleId
        $rule.ItemId | Should -Be $ruleId
    }
}

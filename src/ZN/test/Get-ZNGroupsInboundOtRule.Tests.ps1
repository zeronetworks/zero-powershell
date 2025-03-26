if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsInboundOtRule' {
    It 'List' {
        $group = (Get-ZNGroup -Search "Cameras").Items | where {$_.name -eq "cameras"}
        $rules = Get-ZNGroupsInboundOtRule -GroupId $group.Id -GroupType ot
        $rules.Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search "Cameras").Items | where {$_.name -eq "cameras"}
        $rules = Get-ZNGroupsInboundOtRule -GroupId $group.Id -GroupType ot
        $rule = Get-ZNGroupsInboundOtRule -GroupId $group.Id -GroupType ot -RuleId $rules.Items[0].Id
        $rule.ItemId | Should -Not -Be $null
    }
}

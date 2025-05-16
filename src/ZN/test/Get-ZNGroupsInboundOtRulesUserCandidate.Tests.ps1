if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsInboundOtRulesUserCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsInboundOtRulesUserCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsInboundOtRulesUserCandidate' {
    It 'List' {
        $group = (Get-ZNGroup -Search "Domain Controllers").Items | where {$_.Domain -eq "tag"}
        (Get-ZNGroupsInboundOtRulesUserCandidate -GroupId $group.Id -GroupType tag).Items.Count | Should -BeGreaterThan 0
    }
}

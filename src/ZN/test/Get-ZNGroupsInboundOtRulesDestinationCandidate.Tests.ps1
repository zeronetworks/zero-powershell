if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsInboundOtRulesDestinationCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsInboundOtRulesDestinationCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsInboundOtRulesDestinationCandidate' {
    It 'List' {
        $group = (Get-ZNGroup -Search "Cameras").Items | where {$_.name -eq "cameras"}
        $candidates = Get-ZNGroupsInboundOtRulesDestinationCandidate -GroupId $group.Id -GroupType ot
        $candidates.Items.Count | Should -BeGreaterThan 0
    }
}

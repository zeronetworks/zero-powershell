if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsExternalAccessPolicyStatistics'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsExternalAccessPolicyStatistics.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsExternalAccessPolicyStatistics' {
    It 'Get' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        (Get-ZNGroupsExternalAccessPolicyStatistics -GroupId $groupId -GroupType tag).PolicyStatisticsTotalCount | Should -Not -BeNullOrEmpty
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsNetworkAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsNetworkAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsNetworkAnalysis' {
    It 'Get' {
        $group = (Get-ZNGroup -search "domain controllers").Items | where {$_.Domain -eq "tag"} 
        $analysis = Get-ZNGroupsNetworkAnalysis -GroupId $group.Id -GroupType "tag" -DirectlyRetrievedFromAsset
        $analysis.CountByRemoteAsset | Should -BeGreaterThan 0
    }
}

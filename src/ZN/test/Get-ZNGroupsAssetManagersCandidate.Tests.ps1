if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsAssetManagersCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsAssetManagersCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsAssetManagersCandidate' {
    It 'List' {
        $group = (Get-ZNGroup -Search clients).Items | where {$_.Id -like "g:s:*"}
        (Get-ZNGroupsAssetManagersCandidate -GroupId $group.id -GroupType system).Items | Should -Not -Be $null
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Search-ZNGroupsExternalId'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Search-ZNGroupsExternalId.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Search-ZNGroupsExternalId' {
    It 'Search' {
        $extId = ((Get-ZNGroup -Search "Information Sharing").Items | select -First 1).externalId
        $group = Search-ZNGroupsExternalId -ExternalId $extId -GroupType snow
        $group.ItemId | Should -Not -BeNullOrEmpty

    }
}

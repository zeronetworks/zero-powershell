if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsNetworkActivitiesDistinctValue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsNetworkActivitiesDistinctValue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsNetworkActivitiesDistinctValue' {
    It 'List' {
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        (Get-ZNGroupsNetworkActivitiesDistinctValue -GroupId $group.Id -GroupType tag -FieldName srcAsset).ItemAggregations.Count | Should -BegreaterThan 0
    }
}

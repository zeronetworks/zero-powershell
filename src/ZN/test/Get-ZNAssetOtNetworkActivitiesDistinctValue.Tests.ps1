if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtNetworkActivitiesDistinctValue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtNetworkActivitiesDistinctValue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtNetworkActivitiesDistinctValue' {
    It 'List' {
        $assetId = (Search-ZNAsset -Fqdn otv1.posh.local).AssetId
        (Get-ZNAssetOtNetworkActivitiesDistinctValue -AssetId $assetId -FieldName srcAsset).ItemAggregations.Count | Should -BeGreaterThan 0
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetNetworkAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetNetworkAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetNetworkAnalysis' {
    It 'Get' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $analysis = get-znAssetNetworkAnalysis -AssetId $asset.AssetId -DirectlyRetrievedFromAsset
        $analysis.CountByRemoteAsset | Should -BeGreaterThan 0
    }
}

if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtNetworkAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtNetworkAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtNetworkAnalysis' {
    It 'Get' {
        $asset = (Search-ZNAsset -fqdn poshotv1.posh.local).AssetId
        $analysis = Get-ZNAssetOtNetworkAnalysis -AssetId $asset -ConnectionState 2 -DirectlyRetrievedFromAsset:$false
        $analysis.CountByRemoteAsset | Should  -Not -BeNullOrEmpty
    }
}

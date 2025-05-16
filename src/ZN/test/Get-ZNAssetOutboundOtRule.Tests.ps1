if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOutboundOtRule' {
    It 'List' {
        $assetId = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $rules = Get-ZNAssetOutboundOtRule -AssetId $assetId
        $rules.Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $assetId = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $rules = Get-ZNAssetOutboundOtRule -AssetId $assetId
        (Get-ZNAssetOutboundOtRule -AssetId $assetId -RuleId $rules.Items[0].Id).Itemid | Should -Not -BeNullOrEmpty
    }
}

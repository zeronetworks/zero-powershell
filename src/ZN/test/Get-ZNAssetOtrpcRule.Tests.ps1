if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtrpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtrpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtrpcRule' {
    It 'List' {
        $asset = (Search-ZNAsset -fqdn switch01).AssetId
        (Get-ZNAssetOtrpcRule -AssetId $asset -AddBuiltins).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $asset = (Search-ZNAsset -fqdn switch01).AssetId
        $rules = (Get-ZNAssetOtrpcRule -AssetId $asset -AddBuiltins).Items
        $rule = Get-ZNAssetOtrpcRule -AssetId $asset -RuleId $rules[0].Id
        $rule.ItemId | Should -Not -Be $null
    }
}

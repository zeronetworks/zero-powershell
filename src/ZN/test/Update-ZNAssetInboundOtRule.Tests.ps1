if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetInboundOtRule' {
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $rules = Get-ZNAssetInboundOtRule -AssetId $assetId
        $rule = $rules.Items[0]
        $description = $rule.Description + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetInboundOtRule -AssetId $assetId -RuleId $rule.Id -Description $description
        $updatedRule = Get-ZNAssetInboundOtRule -AssetId $assetId -RuleId $rule.Id
        $updatedRule.ItemDescription | Should -Be $description
    }
}

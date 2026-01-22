if(($null -eq $TestName) -or ($TestName -contains 'Approve-ZNAssetOtInboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Approve-ZNAssetOtInboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Approve-ZNAssetOtInboundRulesCleanup' {
    It 'Approve' {
        $asset = Search-ZNAsset -Fqdn poshOTv2.posh.local
        $rule = (Get-ZNAssetInboundRule -AssetId $asset.AssetId -Direction 2).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Approve-ZNAssetOtInboundRulesCleanup -AssetId $asset.assetId -RuleId $rule.id } | Should -Not -Throw
    }
}
